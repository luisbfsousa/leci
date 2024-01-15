import pytest
from game import *
from mapa import *
from characters import *
from consts import Direction

# columns x lines
mapa13x13 = [
    [
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
    ],
    [
        Tiles.STONE,
        Tiles.PASSAGE,
        Tiles.STONE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.STONE,
    ],
    [
        Tiles.STONE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.STONE,
    ],
    [
        Tiles.STONE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.STONE,
    ],
    [
        Tiles.STONE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.STONE,
    ],
    [
        Tiles.STONE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.STONE,
    ],
    [
        Tiles.STONE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.STONE,
    ],
    [
        Tiles.STONE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.STONE,
    ],
    [
        Tiles.STONE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.STONE,
    ],
    [
        Tiles.STONE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.STONE,
    ],
    [
        Tiles.STONE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.STONE,
    ],
    [
        Tiles.STONE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.PASSAGE,
        Tiles.STONE,
    ],
    [
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
        Tiles.STONE,
    ],
]


def test_game():
    game = Game()
    assert not game._running

    game.start("John Doe")
    assert game._running

    assert game.score == 3300  # Bonus score for starting a game and quitting


def test_map():
    game = Game()
    game.start("John Doe")

    game.map = Map(
        enemies=0,
        size=(13, 13),
        mapa=mapa13x13,
        enemies_spawn=[(8, 8), (7, 8), (8, 7)],
        rocks=[(1, 11)],
    )

    assert not game.map.is_blocked((1, 1), traverse=False)
    print(game.map.map[1][2])
    assert game.map.is_blocked((1, 2), traverse=False)

    # test directions
    assert game.map.calc_pos((4, 4), Direction.NORTH) == (4, 3)
    assert game.map.calc_pos((4, 4), Direction.SOUTH) == (4, 5)
    assert game.map.calc_pos((4, 4), Direction.WEST) == (3, 4)
    assert game.map.calc_pos((4, 4), Direction.EAST) == (5, 4)

    # test blocked / diggable
    assert game.map.calc_pos((1, 1), Direction.SOUTH, traverse=False) == (1, 1)
    assert game.map.calc_pos((1, 1), Direction.SOUTH, traverse=True) == (1, 2)
