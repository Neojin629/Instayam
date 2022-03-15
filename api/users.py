from flask import Blueprint, jsonify, abort, request
from ..models import User, db, Post, likes_table, comments_table, tags_table


import hashlib
import secrets

bp = Blueprint('users', __name__, url_prefix='/users')


def scramble(password: str):
    """Hash and salt the given password"""
    salt = secrets.token_hex(16)
    return hashlib.sha512((password + salt).encode('utf-8')).hexdigest()


bp = Blueprint('users', __name__, url_prefix='/users')


@bp.route('', methods=['GET'])  # decorator takes path and list of HTTP verbs
def index():
    users = User.query.all()  # ORM performs SELECT query
    result = []
    for u in users:
        result.append(u.serialize())  # build list of Tweets as dictionaries
    return jsonify(result)  # return JSON response


@bp.route('/<int:id>', methods=['GET'])
def show(id: int):
    u = User.query.get_or_404(id)
    return jsonify(u.serialize())


@bp.route('', methods=['POST'])
def create():
    # req body must contain user_id and content
    if 'username' not in request.json or 'password' not in request.json:
        return abort(400)

    username = request.json['username']
    password = request.json['password']

    if len(username) < 3 or len(password) < 8:
        return abort(400)

    # construct User
    u = User(username=username, password=scramble(password))

    db.session.add(u)  # Prepare CREATE statement
    db.session.commit()  # execute CREATE statement
    return jsonify(u.serialize())


@bp.route('/<int:id>', methods=['DELETE'])
def delete(id: int):
    u = User.query.get_or_404(id)
    try:
        db.session.delete(u)  # prepare DELETE statement
        db.session.commit()  # execute DELETE statement
        return jsonify(True)
    except:
        # something went wrong :(
        return jsonify(False)


@bp.route('/<int:id>', methods=['PATCH', 'PUT'])
def update(id: int):
    u = User.query.get_or_404(id)

    if 'username' in request.json:
        if len(request.json['username']) < 3:
            return abort(400)
        else:
            u.username = request.json['username']

    if 'password' in request.json:
        if len(request.json['password']) < 8:
            return abort(400)
        else:
            u.password = scramble(request.json['password'])

    if 'username' not in request.json and 'password' not in request.json:
        return abort(400)

    try:
        db.session.commit()  # execute Update statement
        return jsonify(u.serialize())
    except:
        # something went wrong :(
        return jsonify(False)


@bp.route('/<int:id>/liked_posts', methods=['GET'])
def liked_posts(id: int):
    u = User.query.get_or_404(id)
    result = []
    for u in u.liked_posts:
        result.append(u.serialize())
    return jsonify(result)
