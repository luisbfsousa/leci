import asyncio
import logging
import math
import random

from characters import DigDug, Direction, Fygar, Pooka, Rock
from mapa import VITAL_SPACE, Map
from consts import Smart, LIVES, TIMEOUT, MAX_LEN_ROPE, MIN_ENEMIES

logger = logging.getLogger("Game")
logger.setLevel(logging.DEBUG)

INITIAL_SCORE = 0
GAME_SPEED = 100
MAP_SIZE = (48, 24)


def level_enemies(level):
    level += MIN_ENEMIES
    fygars = random.randrange(1, level // 2)
    pookas = level - fygars
    return [Fygar] * fygars + [Pooka] * pookas


def key2direction(key):
    if key == "w":
        return Direction.NORTH
    elif key == "a":
        return Direction.WEST
    elif key == "s":
        return Direction.SOUTH
    elif key == "d":
        return Direction.EAST
    return None


class Rope:
    def __init__(self, mapa):
        self._pos = []
        self._dir = None
        self._map = mapa

    def __reset_rope(self):
        self._pos = []
        self._dir = None
        return

    @property
    def stretched(self):
        return self._pos != []

    def to_dict(self):
        return {"dir": self._dir, "pos": self._pos}

    def shoot(self, pos, direction, _rocks, _enemies):
        if self._dir and direction != self._dir:
            return self.__reset_rope()  # reset rope because digdug changed direction

        if len(self._pos) > 0:
            new_pos = self._map.calc_pos(self._pos[-1], direction, traverse=False)
        else:
            new_pos = self._map.calc_pos(pos, direction, traverse=False)

        if new_pos in [r.pos for r in _rocks]:  # we hit a rock
            return self.__reset_rope()

        if new_pos in self._pos:  # we hit a wall
            return self.__reset_rope()
        
        for e in _enemies:  # rope caught fire
            if isinstance(e,Fygar) and e.fire and any(p in self._pos for p in e.fire):
                return self.__reset_rope()
            
        self._pos.append(new_pos)

        self._dir = direction
        if len(self._pos) > MAX_LEN_ROPE:
            self._pos.pop()

    def hit(self, enemies):
        if self._pos == []:  # can hit only if rope is out
            return False

        for e in enemies:
            if e.pos in self._pos:
                e.kill()  # kill enemy

                # remove rope after hit
                rope_index = self._pos.index(e.pos)
                self._pos = self._pos[: rope_index + 1]

                return True
        return False


class Game:
    def __init__(self, level=1, lives=LIVES, timeout=TIMEOUT, size=MAP_SIZE):
        logger.info(f"Game(level={level}, lives={lives})")
        self.initial_level = level
        self._running = False
        self._timeout = timeout
        self._score = 0
        self._step = 0
        self._total_steps = 0
        self._state = {}
        self._initial_lives = lives
        self.map = Map(size=size, empty=True)
        self._enemies = []
        self._rope = Rope(self.map)
        self.respawn = False

    @property
    def level(self):
        return self.map.level

    @property
    def running(self):
        return self._running

    @property
    def score(self):
        bonus_score = (
            self._score
            + (self.map.level * TIMEOUT - self._total_steps) // 10
            + self._digdug.lives * 1000
        )
        logger.info(
            f"FINAL SCORE with bonus for efficiency and survivability: {bonus_score}"
        )
        return bonus_score

    @property
    def total_steps(self):
        return self._total_steps

    def start(self, player_name):
        logger.debug("Reset world")
        self._player_name = player_name
        self._running = True
        self._total_steps = 0
        self._score = INITIAL_SCORE
        self._digdug = DigDug(self.map.digdug_spawn, self._initial_lives)

        self.next_level(self.initial_level)

    def stop(self):
        logger.info("GAME OVER")
        self._total_steps += self._step
        self._running = False

    def next_level(self, level):
        logger.info("NEXT LEVEL")
        self.map = Map(level=level, size=self.map.size)
        self._digdug.respawn()
        self._total_steps += self._step
        self._step = 0
        self._rope = Rope(self.map)
        self._lastkeypress = ""
        self._enemies = [
            enemy(
                pos,
                smart=random.choices(list(Smart), [1, level // 7, level // 14], k=1)[
                    0
                ],
            )
            for enemy, pos in zip(level_enemies(level), self.map.enemies_spawn)
        ]
        logger.debug("Enemies: %s", self._enemies)
        self._rocks = [Rock(p) for p in self.map.rocks_spawn]

    def quit(self):
        logger.debug("Quit")
        self._running = False

    def keypress(self, key):
        self._lastkeypress = key

    def update_digdug(self):
        try:
            assert self._lastkeypress in "wasdAB" or self._lastkeypress == ""

            if self._lastkeypress.isupper():
                # Parse action
                if self._lastkeypress in "AB":
                    self._rope.shoot(
                        self._digdug.pos, self._digdug.direction, self._rocks, self._enemies
                    )
                    if self._rope.hit(self._enemies):
                        logger.debug(
                            "[step=%s] Enemy hit with rope(%s) - enemies: %s - digdug: %s",
                            self._step,
                            self._rope.to_dict(),
                            self._enemies,
                            self._digdug,
                        )
            else:
                # if digdug moves we let go of the rope
                if self._lastkeypress in "wasd" and self._lastkeypress != "":
                    self._rope = Rope(self.map)

                # Update position
                self._digdug.move(
                    self.map,
                    key2direction(self._lastkeypress),
                    self._enemies,
                    self._rocks,
                )

        except AssertionError:
            logger.error(
                "Invalid key <%s> pressed. Valid keys: w,a,s,d A B", self._lastkeypress
            )
        finally:
            self._lastkeypress = ""  # remove inertia

        if len(self._enemies) == 0:
            logger.info(f"Level {self.map.level} completed")
            self._score += (
                self.map.level * TIMEOUT - self._total_steps
            ) // 10  # update score before new level
            self.next_level(self.map.level + 1)
            return False
        return True

    def kill_digdug(self):
        if self.respawn:    #we are already dead, no need to kill again
            return
        logger.info("[step=%s] Dig Dug has died", self._step)
        self._digdug.kill()
        logger.debug(
            "[step=%s] Dig Dug has now %s lives", self._step, self._digdug.lives
        )
        if self._digdug.lives > 0:
            logger.debug("RESPAWN")
            self.respawn = True
        else:
            self.stop()

    def collision(self):
        if (
            not self._running
        ):  # if game is not running, we don't need to check collisions
            return
        for e in self._enemies:
            if e.pos == self._digdug.pos:
                logger.debug("[step=%s] %s has killed %s", self._step, e, self._digdug)
                self.kill_digdug()
                e.respawn()
            if e._name == "Fygar" and e.fire:
                if self._digdug.pos in e.fire:
                    logger.debug(
                        "[step=%s] %s has killed %s with fire",
                        self._step,
                        e,
                        self._digdug,
                    )
                    self.kill_digdug()
        for r in self._rocks:
            if r.pos == self._digdug.pos:
                logger.debug("[step=%s] %s has killed %s", self._step, r, self._digdug)
                self.kill_digdug()
            for e in self._enemies:
                if r.pos == e.pos:
                    e.kill(rock=True)
                    self._score += e.points(self.map.ver_tiles)

    async def next_frame(self):
        await asyncio.sleep(1.0 / GAME_SPEED)

        if not self._running:
            logger.info("Waiting for player 1")
            return

        if self.respawn:
            self._digdug.respawn()
            for e in self._enemies:
                if math.dist(self._digdug.pos, e.pos) < VITAL_SPACE:
                    logger.debug("respawn camper")
                    e.respawn()
            self.respawn = False

        self._step += 1
        if self._step == self._timeout:
            self.stop()

        if self._step % 100 == 0:
            logger.debug(
                f"[{self._step}] SCORE {self._score} - LIVES {self._digdug.lives}"
            )

        if not self.update_digdug():
            return  # if update_digdug returns false, we have a new level and we stop right here

        self.collision()

        for enemy in self._enemies:
            if enemy.alive:
                enemy.move(self.map, self._digdug, self._enemies, self._rocks)
        if self._rope.stretched and self._rope.hit(self._enemies):
            logger.debug(
                "[step=%s] Enemy hit with rope(%s) - enemies: %s - digdug: %s",
                self._step,
                self._rope.to_dict(),
                self._enemies,
                self._digdug,
            )
 
        for rock in self._rocks:
            rock.move(self.map, digdug=self._digdug, rocks=self._rocks)

        self._score += sum(
            [e.points(self.map.ver_tiles) for e in self._enemies if not e.alive]
        )
        self._enemies = [
            e for e in self._enemies if e.alive and not e.exit
        ]  # remove dead and exited enemies

        self.collision()

        self._state = {
            "level": self.map.level,
            "step": self._step,
            "timeout": self._timeout,
            "player": self._player_name,
            "score": self._score,
            "lives": self._digdug.lives,
            "digdug": self._digdug.pos,
            "enemies": [],
            "rocks": [r.to_dict() for r in self._rocks],
        }

        for e in self._enemies:
            self._state["enemies"].append(e.to_dict())
            if e.name == "Fygar" and e.fire:
                self._state["enemies"][-1]["fire"] = e.fire
            if e.traverse:
                self._state["enemies"][-1]["traverse"] = e.traverse

        if self._rope.stretched:
            self._state["rope"] = self._rope.to_dict()

        return self._state

    def info(self):
        return {
            "size": self.map.size,
            "map": self.map.map,
            "fps": GAME_SPEED,
            "timeout": TIMEOUT,
            "lives": LIVES,
            "score": self.score,
            "level": self.map.level,
        }
