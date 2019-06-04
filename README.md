# Contests web application

This is a web application to manage contests, user's login/registration and participation in contests uploading audios.

## Version 1

* Built on Ruby and Ruby on Rails.
* Uses local storage to store images and audios.
* Uses a relational database.

## Assumptions

This application was created using:

* Ruby 2.5.3
* Rails 5.2.2
* Ubuntu 18.4
* MySQL 14.14

## Prerequisites

1) Install Ruby on Rails, follow this [link](https://gorails.com/setup/ubuntu/18.04).
2) Install Git, follow this [link](https://www.liquidweb.com/kb/install-git-ubuntu-16-04-lts/).
3) Install MySQL, follow this [link](https://www.digitalocean.com/community/tutorials/how-to-use-mysql-with-your-ruby-on-rails-application-on-ubuntu-14-04).

## Instructions

1) Configure these environment variables:

|Environment variable|Example|Description|
|-|-|-|
|`CONTESTS_SERVER_URL`|http://localhost:8000/|The server URL where web application is deployed|
|`CONTESTS_DATABASE_HOST`|localhost or 127.0.0.1|The database host|
|`CONTESTS_DATABASE_USER`|root|The database user|
|`CONTESTS_DATABASE_PASSWORD`|12345|The database password|
|`CONTESTS_DATABASE_NAME`|contests|The database name|
|`CONTESTS_PATH_IMAGES`|/home/images/|The path for images|
|`CONTESTS_PATH_ORIGINAL_FILES`|/home/audio/original/|The path where *ORIGINAL* audio files will be stored|
|`CONTESTS_PATH_CONVERTED_FILES`|/home/audio/converted/|The path where *CONVERTED* audio files will be stored|

2) Go to `bin/` folder.

3) Install the MySQL gem and dependencies:

```bash
sudo apt-get install libmysqlclient-dev
gem install mysql2
```

4) Install all the necessary gems and update the existing ones:

```bash
gem update
gem install rails
bundle install
```

5) Create database model:

```bash
rails db:migrate
```

6) Run the server:

```bash
rails server -p 8000
```

7) Go to your favorite web browser and type:

```bash
http://localhost:8000/
```

8) Enjoy.
