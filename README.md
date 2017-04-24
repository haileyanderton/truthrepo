When I was conceptualizing the TruthRepo app, I proposed:

1. My app will be a bible verse database that categorizes different bible verses and inspirational quotes from Christian authors that apply to different topics or challenges we face in life. Visitors will also be able to add their own quotes and verses.
2. This app will be especially useful for the faith-based community when they need help with something more topical or want to share the verses and quotes that have helped them during a challenge/obstacle they have faced.
3. I will use python, flask, bootstrap, wtf forms, and SQLAlchemy to present a select menu of topics that will link to that individual record page. I will also include web forms for when users want to add to a record.
4. I will start with 15 topics and list at least 3 verses and 2 quotes for each topic.
5. To store my data, I will use a MySQL database and manually enter my data.

Here's how I accomplished this:

1. I created a MySQL database called truthrepo that contained 3 tables: topics, verses, quotes. I used the tutorials below to relate my tables with one another, as one topic relates to many verses and quotes (one to many relationship).

http://www.w3resource.com/sql/joins/using-a-where-cluase-to-join-two-tables-related-by-a-single-column-primary-key-or-foriegn-key-pair.php

https://www.quora.com/How-do-you-create-foreign-keys-on-a-table-by-using-phpMyAdmin

2. I created the file structure for my code and started to build my db_app.py file. I imported the necessary technologies I proposed to use and then wrote the code necessary for connecting to my database. Next, I included the necessary code for flask and SQLalchemy.

3. I created 3 classes that hold my 3 different tables. My first challenge was figuring out how to relate the tables within the 'models'. I used the following tutorials to create foreign keys and relate tables.

https://www.youtube.com/watch?v=F4fTjXSxtE0

https://docs.djangoproject.com/en/1.11/topics/db/models/

https://techarena51.com/index.php/one-to-many-relationships-with-flask-sqlalchemy/

http://flask-appbuilder.readthedocs.io/en/latest/relations.html

4. I created a 4th class that holds my select menu form. I figured out later that for the menu choices I needed to hardcode the 'topic_id' as the value, and the topic name as the label so I could pass that information through the routes.

5. I set up 3 routes: '/', '/list', '/topic/<id>' and connected them to the index.html, list.html and topic.html templates, respectfully. This part was definitely the most challenging, as I had trouble using the correct variables and gathering the correct information to pass through to each route and template.

6. I added two additional classes to the top of my db_app.py file, creating two separate forms that allow the user to add a new verse or a new quote to any topic. I then created two additional corresponding routes that run through the same template: add.html.

7. I made the page more visually appealing and user-friendly and added error handlers. Next, I put my app on haileyanderton.com. I am very proud of this project and the amount of time I put into it. However, If I was to go back and change anything I would figure out how to get rid of the /list route and template altogether as it is superfluous to the user.
