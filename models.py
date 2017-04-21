import pymysql
from flask import Flask, render_template, request
from flask_bootstrap import Bootstrap
from flask_wtf import FlaskForm
from wtforms import SubmitField, SelectField
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SECRET_KEY'] = 'som$secrt*strng!here!'

# connect to local database
userpass = 'mysql+pymysql://root:@'
basedir  = '127.0.0.1'
dbname   = '/truthrepo'
socket   = '?unix_socket=/Applications/XAMPP/xamppfiles/var/mysql/mysql.sock'
dbname   = dbname + socket

# setup required for SQLAlchemy and Bootstrap
app.config['SQLALCHEMY_DATABASE_URI'] = userpass + basedir + dbname

app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True

bootstrap = Bootstrap(app)
app.config['BOOTSTRAP_SERVE_LOCAL'] = True

db = SQLAlchemy(app)

class Topic(db.model):
    __tablename__ = 'topics'
    topic_id = db.Column(db.Integer, primary_key=True)
    topic = db.Column(db.String)
    verses = db.relationship('Verse', backref='topic', lazy='dynamic')
    quotes = db.relationship('Quote', backref="topic", lazy='dynamic')

    def __init__(self, topic):
        self.topic = topic

    def __repr__(self):
        return '<Topic %s>' % self.topic

class Verse(db.model):
    __tablename__ = 'verses'
    verse_id = db.Column(db.Integer, primary_key=True)
    verse = db.Column(db.String)
    book = db.Column(db.String)
    topic_id = db.Column(db.Integer, db.ForeignKey('topic.topic_id'))

    def __init__(self, verse, book, topic_id):
        self.verse = verse
        self.book = book
        self.topic_id = topic_id

    def __repr__(self):
        return '<Verse %s>' % self.verse

class Quote(db.Model):
    __tablename__ = 'quotes'
    quote_id = db.Column(db.Integer, primary_key=True)
    quote = db.Column(db.String)
    author = db.Column(db.String)
    topic_id = db.Column(db.Integer, db.ForeignKey('topic.topic_id'))

    def __init__(self, quote, author, topic_id):
        self.quote = quote
        self.author = author
        self.topic_id = topic_id

    def __repr__(self):
        return '<Quote %s>' % self.quote



class TopicForm(FlaskForm):
    select = SelectField('Choose a topic:', choices=[
      ('Grief', 'Grief'),
      ('Forgiveness', 'Forgiveness'),
      ('Trust', 'Trust'),
      ('Prayer', 'Prayer'),
      ('Love', 'Love'),
      ('Doubt', 'Doubt'),
      ('Faith', 'Faith'),
      ('Strength', 'Strength'),
      ('Money', 'Money'),
      ('Wisdom', 'Wisdom'),
      ('Peace', 'Peace'),
      ('Patience', 'Patience'),
      ('Friendship', 'Friendship'),
      ('Perseverance', 'Perseverance'),
      ('Hope', 'Hope') ])
    submit = SubmitField('Submit')
