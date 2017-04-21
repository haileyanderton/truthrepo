#!/Users/haileyanderton/Documents/python/flask-project/env/bin/python

#   change the path above to match yours

# using python 3
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


def get_ids_and_topics(source):
    ids_and_topics = []
    for row in source:
        id = Topic.query.filter_by(topic_id=topic_id).all()
        topic_link = Topic.query.filter_by(topic=topic).first_or_404()
        ids_and_songs.append( [id, topic_link ] )
    return ids_and_songs


# each table in the database needs a class to be created for it
# db.Model is required - don't change it
# this database has only ONE table, socks
# identify all of your columns by name and data type


@app.route('/', methods=['GET'])
def index():
    # make an instance of the WTF form class we created, above
    form = TopicForm()
    # pass it to the template
    return render_template('index.html', form=form)


@app.route('/list')
def topiclist():
    # request was imported - line 4, this file -
    # form is the variable in the wtf.quick_form() - see index.html template -
    # 'select' is the name quick_form assigned
    # automatically to the select element - its value comes from the
    # attribute (value=) in the selected option
    #topic_id = Topic.query.filter_by(topic_id=topic_id).all()
    # now we know which style was selected in the form
    # so we get all socks of _that_ style from the db with filter_by()
    # and sort the names alphabetically with order_by()
    ids_and_topics = get_ids_and_topics('topics')
    #the_topic = Topic.query.filter_by(topic_id=topic_id).first_or_404()
    # and we pass them to the template
    return render_template('list.html', pairs=ids_and_topics)


# @app.route('/topic/<id>')
# def single_topic(id):
#     topic = request.form['select']
#      topic = request.form['select']
#      #topic_list = Topic.query.filter_by(topic=topic).all()
#     # get all columns for the one sock with the supplied id
#     verses = Verse.query.filter_by(id=verse_id).all
#     # pass them to the template
#     return render_template('topic.html', verses=verses)

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
