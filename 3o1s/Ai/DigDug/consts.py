from enum import IntEnum

GROUND_POINTS, MIDDLE_POINTS, BOTTOM_POINTS, BED_POINTS = 200, 300, 400, 500
ROCK_KILL_POINTS = 1000

MAX_LEN_ROPE = 3
MIN_ENEMIES = 3

VITAL_SPACE = 3
MIN_CORRIDOR_LEN = 8

LIVES = 3  # DigDug lives
MIN_ENEMY_LIFE = LIVES

TIMEOUT = 3000


class Tiles(IntEnum):
    PASSAGE = 0
    STONE = 1


class Speed(IntEnum):
    SLOWEST = (1,)
    SLOW = (2,)
    NORMAL = (3,)
    FAST = 4


class Smart(IntEnum):
    LOW = (1,)
    NORMAL = (2,)
    HIGH = 3


class Direction(IntEnum):
    NORTH = 0
    EAST = 1
    SOUTH = 2
    WEST = 3


ENEMY_HEAL_ODD = 0.1
WALLPASS_ODD = {Smart.LOW: 0.01, Smart.NORMAL: 0.2, Smart.HIGH: 0.5}
