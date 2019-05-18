# greenfield-of-friends

This is a standalone microservice for brownfield-of-dreams.

This app has a Postgres DB that holds a "friendships" table to store these relationships. It runs on a Sinatra framework. This gave us experience in dealing with versioning issues and in setting up an app and framework from scratch.

This app is deployed <a href="https://young-mountain-25786.herokuapp.com/">HERE</a>. Note that this app has no user-facing functionality and instead interacts with the Brownfield of Dreams app deployed <a href='https://serene-gorge-80745.herokuapp.com/'>here</a>. The primary app can be viewed on <a href="https://github.com/Matt-Weiss/brownfield-of-dreams">GitHub</a> as well.

To install this app on your local machine

Clone down repo
```
bundle install
```

The app can be run locally with
```
shotgun
```

Tech Stack:
Sinatra 2.0.5
Ruby 2.4.1

and uses Rspec for the test suite.
