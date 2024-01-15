import logging
import math
import random
import uuid
from collections import deque

from consts import (
    BED_POINTS,
    BOTTOM_POINTS,
    ENEMY_HEAL_ODD,
    GROUND_POINTS,
    MIDDLE_POINTS,
    ROCK_KILL_POINTS,
    LIVES,
    MIN_ENEMY_LIFE,
    WALLPASS_ODD,
    Direction,
    Smart,
    Speed,
)
from mapa import VITAL_SPACE

HISTORY_LEN = 10

logger = logging.getLogger("Characters")
logger.setLevel(logging.INFO)


class Character:
    def __init__(self, x=1, y=1):
        self._pos = x, y
        self._spawn_pos = self._pos
        self._direction: Direction = Direction.EAST
        self._history = deque(maxlen=HISTORY_LEN)

    @property
    def history(self):
        return str(list(self._history))

    @property
    def pos(self):
        return self._pos

    @pos.setter
    def pos(self, value):
        if value[0] < self._pos[0]:
            self._direction = Direction.WEST
        elif value[0] > self._pos[0]:
            self._direction = Direction.EAST
        elif value[1] < self._pos[1]:
            self._direction = Direction.NORTH
        elif value[1] > self._pos[1]:
            self._direction = Direction.SOUTH
        self._pos = value

    @property
    def direction(self):
        return self._direction

    @property
    def x(self):
        return self._pos[0]

    @property
    def y(self):
        return self._pos[1]

    @property
    def __str__(self) -> str:
        return f"{self.__class__.__name__}({self._pos})"

    def respawn(self):
        logger.debug("RESPAWN %s @ %s", self, self._spawn_pos)
        self.pos = self._spawn_pos

    def move(self, mapa, rocks):
        raise NotImplementedError

    def _calc_dir(self, old_pos, new_pos):
        if old_pos[0] < new_pos[0]:
            return Direction.EAST
        elif old_pos[0] > new_pos[0]:
            return Direction.WEST
        elif old_pos[1] < new_pos[1]:
            return Direction.SOUTH
        elif old_pos[1] > new_pos[1]:
            return Direction.NORTH
        logger.error(
            "Can't calculate direction from %s to %s, please report as this is a bug",
            old_pos,
            new_pos,
        )
        return None


class Rock(Character):
    def __init__(self, pos):
        super().__init__(*pos)
        self.id = uuid.uuid4()
        self._falling = random.randint(3, 9)  # we never known when the rock will fall

    def to_dict(self):
        return {"id": str(self.id), "pos": self.pos}

    def __str__(self):
        return f"Rock({self.pos})"

    def move(self, mapa, digdug, rocks):
        open_pos = mapa.calc_pos(self.pos, Direction.SOUTH, traverse=False)
        if open_pos in [r.pos for r in rocks]:  # don't fall on other rocks
            return

        if digdug.pos == open_pos and self._falling > 0:
            self._falling -= 1
            return

        if self.pos != open_pos:
            self._falling = random.randint(
                3, 9
            )  # we never known when the rock will fall

        self.pos = open_pos


class DigDug(Character):
    def __init__(self, pos, lives=LIVES):
        super().__init__(*pos)
        self._lives: int = lives

    def to_dict(self):
        return {"pos": self.pos, "lives": self._lives, "dir": self._direction.value}

    @property
    def lives(self):
        return self._lives

    def kill(self):
        self._lives -= 1

    def move(self, mapa, direction, enemies, rocks):
        self._history.append(self.pos)
        new_pos = mapa.calc_pos(self.pos, direction)

        if new_pos not in [r.pos for r in rocks]:  # don't bump into rocks
            self.pos = new_pos
            mapa.dig(self.pos)

    def __str__(self):
        return f"DigDug({self.pos}, lives={self._lives}, history={self.history})"


class Enemy(Character):
    def __init__(self, pos, name, speed, smart, wallpass, lives=MIN_ENEMY_LIFE):
        self._name = name
        self.id = uuid.uuid4()
        self._speed = speed
        self._smart = smart
        self._wallpass = wallpass
        self.dir = list(Direction)
        self.step = 0
        self.lastdir = Direction.EAST
        self.lastpos = pos
        self.freeze = False
        self._alive = lives  # TODO increase according to level
        self.exit = False
        self._points = None
        super().__init__(*pos)
        logger.info(
            "Enemy %s created at %s with Smart.%s",
            self._name,
            self.pos,
            self._smart.name,
        )

    def to_dict(self):
        return {
            "name": self.name,
            "id": str(self.id),
            "pos": self.pos,
            "dir": self.lastdir,
        }

    @property
    def traverse(self):
        return self._wallpass

    @property
    def name(self):
        return self._name

    def __repr__(self) -> str:
        return str(self)

    def __str__(self):
        return f"{self._name}({self.pos}, {self._alive}, {self._wallpass}, {self._smart.name}, {self.history})"

    def points(self, map_height):
        if self._points:
            return self._points

        _, y = self.pos
        if y < map_height / 4:
            return GROUND_POINTS
        elif y < map_height / 2:
            return MIDDLE_POINTS
        elif y < map_height * 3 / 4:
            return BOTTOM_POINTS
        else:
            return BED_POINTS

    def kill(self, rock=False):
        if rock:  # kill immediately
            self._points = ROCK_KILL_POINTS
            self._alive = 0

        self._alive -= 1
        self.freeze = True
        if self._alive < 0:
            self._alive = 0
            return True
        return False

    @property
    def alive(self):
        return self._alive > 0

    def move(self, mapa, digdug, enemies, rocks):
        self._history.append(self.pos)
        if not self.ready():
            return

        if self._alive < MIN_ENEMY_LIFE:
            self._alive += int(
                random.random() < ENEMY_HEAL_ODD
            )  # Give it a chance to come back to life
            return

        if self.freeze: # TODO move to fygar
            self.freeze = False
            self.fire = []
            return

        if self._smart == Smart.LOW:
            new_pos = mapa.calc_pos(self.pos, self.dir[self.lastdir], self._wallpass)
            if new_pos in [r.pos for r in rocks]:  # don't bump into rocks
                new_pos = self.pos
            if new_pos == self.pos:
                self.lastdir = (self.lastdir + random.randint(1, 4)) % len(self.dir)

        elif self._smart == Smart.NORMAL:
            open_pos = [
                pos
                for pos in [
                    mapa.calc_pos(self.pos, d, self._wallpass) for d in Direction
                ]
                if pos not in [self.lastpos]
                and pos not in [r.pos for r in rocks]  # don't bump into rocks
            ]
            if open_pos == []:
                new_pos = self.lastpos
            else:
                next_pos = sorted(
                    open_pos, key=lambda pos: math.dist(digdug.pos, pos), reverse=True
                )
                new_pos = next_pos[0]

        elif self._smart == Smart.HIGH:
            enemies_pos = [e.pos for e in enemies if e.id != self.id]
            open_pos = [
                pos
                for pos in [
                    mapa.calc_pos(self.pos, d, self._wallpass) for d in Direction
                ]
                if pos not in [self.lastpos] + enemies_pos
                and pos not in [r.pos for r in rocks]  # don't bump into rocks
            ]
            if open_pos == []:
                new_pos = self.lastpos
            else:
                next_pos = sorted(open_pos, key=lambda pos: math.dist(digdug.pos, pos))
                new_pos = next_pos[0]

        self.lastpos = self.pos
        self.pos = new_pos
        if self._smart in [Smart.NORMAL, Smart.HIGH] and self.lastpos != self.pos:  # LOW does not require direction calculation
            self.lastdir = self._calc_dir(self.lastpos, self.pos)

        if math.dist(self.pos, (0, 0)) < 1:
            self.exit = True
            logger.debug("%s has EXITED through %s", self.id, self.pos[1])

    def ready(self):
        self.step += int(self._speed)
        if self.step >= int(Speed.FAST):
            self.step = 0
            return True
        return False


class Pooka(Enemy):
    def __init__(self, pos, smart=Smart.NORMAL):
        super().__init__(pos, self.__class__.__name__, Speed.FAST, smart, False)
        self.go_to_corridor = pos

    def move(self, mapa, digdug, enemies, rocks):
        if self._wallpass:
            self._history.append(self.pos)
            open_pos = [
                pos
                for pos in [
                    mapa.calc_pos(self.pos, d, self._wallpass) for d in Direction
                ]
                if pos not in [self.lastpos]
                and pos not in [r.pos for r in rocks]  # don't bump into rocks
            ]
            if open_pos == []:
                new_pos = self.lastpos
            else:
                next_pos = sorted(
                    open_pos, key=lambda pos: math.dist(self.go_to_corridor, pos)
                )
                new_pos = next_pos[0]
            self.lastpos = self.pos
            self.pos = new_pos
            if self.lastpos != self.pos:
                self.lastdir = self._calc_dir(self.lastpos, self.pos)
        else:
            super().move(mapa, digdug, enemies, rocks)
        if self._wallpass and not mapa.is_blocked(self.pos, False):
            self._wallpass = False
            self.go_to_corridor = random.choice(mapa.enemies_spawn)
        
        if not self._wallpass:
            self._wallpass = random.random() < WALLPASS_ODD[self._smart]


class Fygar(Enemy):
    def __init__(self, pos, smart=Smart.NORMAL):
        self.fire = []
        super().__init__(pos, self.__class__.__name__, Speed.SLOW, smart, False)

    def points(self, map_height):
        if self.lastdir in [Direction.EAST, Direction.WEST]:
            return super().points(map_height) * 2

        return super().points(map_height)

    def move(self, mapa, digdug, enemies, rocks):
        super().move(mapa, digdug, enemies, rocks)

        fire_odd = 0.5 if digdug.pos[1] == self.pos[1] else 0.1
        if (
            not self.freeze
            and self.lastdir in [Direction.EAST, Direction.WEST]
            and random.random() < fire_odd
        ):
            pos = self.pos
            for _ in range(3):
                pos = mapa.calc_pos(pos, self.dir[self.lastdir], traverse=False)
                if (
                    pos not in self.fire and
                    pos != self.pos and
                    pos not in [r.pos for r in rocks]
                ):  # Make sure we don't fire on ourselves and prevent fire through rocks
                    self.fire.append(pos)
                else:
                    break
            self.freeze = True
