import logging
import os

from flask_limiter import Limiter
from flask_limiter.util import get_remote_address

from flask import Flask, jsonify, request, send_from_directory
from flask_marshmallow import Marshmallow
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import and_, func


GRADES_FILE = "grades.sqlite"

app = Flask(__name__, static_url_path="")
basedir = os.path.abspath(os.path.dirname(__file__))
app.config["SQLALCHEMY_DATABASE_URI"] = "sqlite:///" + os.path.join(
        basedir, GRADES_FILE
        )
db = SQLAlchemy(app)
ma = Marshmallow(app)

limiter = Limiter(
        get_remote_address,
        app=app,
        default_limits=["1  per 30 second"],
        storage_uri="memory://",
        )

flask_log = logging.getLogger("werkzeug")
flask_log.setLevel(logging.WARNING)

logger = logging.getLogger("IA Ranking")
logger.setLevel(logging.INFO)


# Data model
class Game(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    timestamp = db.Column(db.DateTime, server_default=db.func.now())
    player = db.Column(db.String(25))
    level = db.Column(db.Integer)
    score = db.Column(db.Integer)
    seed = db.Column(db.Integer)

    def __init__(self, player, level, score, seed):
        self.player = player
        self.level = level
        self.score = score
        self.seed = seed

# Schema
class GameSchema(ma.Schema):
    class Meta:
        # Fields to expose
        fields = ("id", "timestamp", "player", "level", "score", "seed")


SINGLE_GAME_SCHEMA = GameSchema()
ALL_GAME_SCHEMA = GameSchema(many=True)


@app.route("/", methods=["GET"])
def index():
    return '<a href="/table.html">Nothing here to see</a>'


# endpoint to create new game
@app.route("/game", methods=["POST"])
def add_game():
    if new_game := request.json:
        logger.info(
                "Player: %s, Score: %s", new_game.get("player"), new_game.get("score")
                )
        try:
            int(new_game.get("score"))
            int(new_game.get("level"))
        except:
            return jsonify({"error": "poor soul..."})

        new_game = Game(
            new_game.get("player"),
            new_game.get("level"),
            new_game.get("score"),
            new_game.get("seed"),
        )

        db.session.add(new_game)
        db.session.commit()

        return SINGLE_GAME_SCHEMA.jsonify(new_game)

    return jsonify({"error": "No game data"}), 400


# Serve static files
@app.route("/static/<path:path>")
@limiter.exempt
def send_static(path):
    return send_from_directory("static", path)


# endpoint to show highscores
@app.route("/highscores", methods=["GET"])
@limiter.exempt
def get_game():
    page = request.args.get("page", 1, type=int)

    q = (
            db.session.query(
                Game.id,
                Game.timestamp,
                Game.player,
                Game.level,
                func.max(Game.score).label("score"),
                )
            .group_by(Game.player)
            .order_by(Game.score.desc(), Game.timestamp.desc())
            )
    logger.debug(q)

    all_games = q.paginate(page=page, per_page=20, error_out=False)

    result = ALL_GAME_SCHEMA.dump(all_games.items)
    return jsonify(result)


# endpoint to show single player games
@app.route("/highscores/<player>", methods=["GET"])
def game_detail(player):
    game = (
            db.session.query(Game)
            .filter(and_(Game.player == player, Game.score > 0))
            .order_by(Game.score.desc())
            .limit(10)
            )
    logger.debug(q)

    result = ALL_GAME_SCHEMA.dump(game)
    return jsonify(result)


if __name__ == "__main__":
    if not os.path.exists(GRADES_FILE):
        with app.app_context():
            db.create_all()

    app.run(debug=False, host="0.0.0.0", port=9000)
