import logging
import random
from enum import IntEnum

from consts import Direction, Tiles, VITAL_SPACE, MIN_CORRIDOR_LEN

logger = logging.getLogger("Map")
logger.setLevel(logging.INFO)


class Map:
    def __init__(
        self,
        level=1,
        rocks=None,
        size=(VITAL_SPACE + 10, VITAL_SPACE + 10),
        mapa=None,
        enemies_spawn=None,
        empty=False,
    ):
        assert size[0] > VITAL_SPACE + 9
        assert size[1] > VITAL_SPACE + 9

        self._level = level
        self._size = size
        self.hor_tiles = size[0]
        self.ver_tiles = size[1]
        self._rocks = rocks
        self._digged = []
        if enemies_spawn:
            self._enemies_spawn = enemies_spawn
        else:
            self._enemies_spawn = []

        if not mapa:
            logger.info("Generating a MAP")
            self.map = [[Tiles.STONE] * self.ver_tiles for i in range(self.hor_tiles)]
            for x in range(self.hor_tiles):
                for y in range(self.ver_tiles):
                    if y in range(0, 2):
                        self.map[x][y] = Tiles.PASSAGE
                    elif x in [0, self.hor_tiles - 1] or y in [0, self.ver_tiles - 1]:
                        self.map[x][y] = Tiles.STONE
                    elif x % 2 == 0 and y % 2 == 0:
                        self.map[x][y] = Tiles.STONE
                    elif (
                        x >= VITAL_SPACE and y >= VITAL_SPACE and not empty
                    ):  # give dig dug some room
                        if random.randint(0, 100) > 70 + 25 / level:
                            self.map[x][y] = Tiles.STONE

            # create caves for enemies
            for e in range(self._level + 2):
                if random.choice([True, False]):
                    # horizontal
                    line = random.randrange(VITAL_SPACE + 1, self.ver_tiles)
                    offset = random.randrange(0, self.hor_tiles - MIN_CORRIDOR_LEN)
                    for x in range(MIN_CORRIDOR_LEN):
                        self.map[offset + x][line] = Tiles.PASSAGE
                    self._enemies_spawn.append((offset, line))
                    logger.debug(f"Spawn enemy at ({offset}, {line})")
                else:
                    # vertical
                    column = random.randrange(0, self.hor_tiles)
                    offset = random.randrange(3, self.ver_tiles - MIN_CORRIDOR_LEN)
                    for y in range(MIN_CORRIDOR_LEN):
                        self.map[column][offset + y] = Tiles.PASSAGE
                    self._enemies_spawn.append((column, offset))
                    logger.debug(f"Spawn enemy at ({column}, {offset})")

            # create rocks
            if not self._rocks:
                self._rocks = []
                for r in range(self._level):
                    x, y = random.randrange(0, self.hor_tiles), random.randrange(
                        VITAL_SPACE + 1, self.ver_tiles - VITAL_SPACE
                    )
                    while self.map[x][y] != Tiles.STONE:
                        x, y = random.randrange(0, self.hor_tiles), random.randrange(
                            VITAL_SPACE + 1, self.ver_tiles - VITAL_SPACE
                        )
                    self._rocks.append((x, y))
        else:
            logger.info("Loading MAP")
            self.map = mapa

        self._digdug_spawn = (1, 1)  # Always true

    def __getstate__(self):
        return self.map

    def __setstate__(self, state):
        self.map = state

    @property
    def size(self):
        return self._size

    @property
    def level(self):
        return self._level

    @level.setter
    def level(self, level):
        self._level = level

    @property
    def digdug_spawn(self):
        return self._digdug_spawn

    @property
    def enemies_spawn(self):
        return self._enemies_spawn

    @property
    def rocks_spawn(self):
        return self._rocks

    @property
    def digged(self):
        return self._digged

    def get_tile(self, pos):
        x, y = pos
        return self.map[x][y]

    def dig(self, pos):
        x, y = pos
        if self.map[x][y] == Tiles.STONE:
            self.map[x][y] = Tiles.PASSAGE
            self._digged.append((x, y))

    def is_blocked(self, pos, traverse):
        x, y = pos
        if x not in range(self.hor_tiles) or y not in range(self.ver_tiles):
            return True
        if self.map[x][y] == Tiles.PASSAGE:
            return False
        if self.map[x][y] == Tiles.STONE:
            if traverse:
                return False
            else:
                return True
        assert False, "Unknown tile type"

    def calc_pos(self, cur, direction: Direction, traverse=True):
        cx, cy = cur
        npos = cur
        if direction == Direction.NORTH:
            npos = cx, cy - 1
        if direction == Direction.WEST:
            npos = cx - 1, cy
        if direction == Direction.SOUTH:
            npos = cx, cy + 1
        if direction == Direction.EAST:
            npos = cx + 1, cy

        # test blocked
        if self.is_blocked(npos, traverse):
            return cur

        return npos
