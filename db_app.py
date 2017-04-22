#!/Users/haileyanderton/Documents/python/flask-project/env/bin/python

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

# SQLAlchemy and Bootstrap things
app.config['SQLALCHEMY_DATABASE_URI'] = userpass + basedir + dbname

app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True

bootstrap = Bootstrap(app)
app.config['BOOTSTRAP_SERVE_LOCAL'] = True

db = SQLAlchemy(app)

# classes: 3 tables and a form


class Topic(db.Model):
    __tablename__ = 'topics'
    topic_id = db.Column(db.Integer, primary_key=True)
    topic = db.Column(db.String)
    verses = db.relationship('Verse', backref='topic', lazy='dynamic')
    quotes = db.relationship('Quote', backref="topic", lazy='dynamic')

    def __init__(self, topic):
        self.topic = topic

    def __repr__(self):
        return '<Topic %s>' % self.topic

class Verse(db.Model):
    __tablename__ = 'verses'
    verse_id = db.Column(db.Integer, primary_key=True)
    verse = db.Column(db.String)
    book = db.Column(db.String)
    topic_id = db.Column(db.Integer, db.ForeignKey('topics.topic_id'))

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
    topic_id = db.Column(db.Integer, db.ForeignKey('topics.topic_id'))

    def __init__(self, quote, author, topic_id):
        self.quote = quote
        self.author = author
        self.topic_id = topic_id

    def __repr__(self):
        return '<Quote %s>' % self.quote

class TopicForm(FlaskForm):
    select = SelectField('Choose a topic:', choices=[
      ('1', 'Grief'),
      ('2', 'Forgiveness'),
      ('3', 'Trust'),
      ('4', 'Prayer'),
      ('5', 'Love'),
      ('6', 'Doubt'),
      ('7', 'Faith'),
      ('8', 'Strength'),
      ('9', 'Money'),
      ('10', 'Wisdom'),
      ('11', 'Peace'),
      ('12', 'Patience'),
      ('13', 'Friendship'),
      ('14', 'Perseverance'),
      ('15', 'Hope') ])
    submit = SubmitField('Submit')

# routes

@app.route('/', methods=['GET'])
def index():
    form = TopicForm()
    # pass the entire form to the template
    return render_template('index.html', form=form)

@app.route('/list', methods=['POST'])
def topiclist():
    topic = request.form['select']
    topics = Topic.query.filter_by(topic=topic).all()
    return render_template('list.html', topic=topic, topics=topics)

@app.route('/sock/<id>')
def topic(id):
    the_topic = Topic.query.filter_by(id=topic_id).first_or_404()
    return render_template('topic.html', the_topic=the_topic)

# error handlers

@app.errorhandler(404)
def page_not_found(e):
    return render_template('404.html'), 404

@app.errorhandler(405)
def form_not_posted(e):
    return render_template('405.html'), 405

@app.errorhandler(500)
def internal_server_error(e):
    return render_template('500.html'), 500


if __name__ == '__main__':
    app.run(debug=True)
