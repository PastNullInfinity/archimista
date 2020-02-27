FROM ruby:2.1

RUN apt-get update -qq && apt-get install -y build-essential git libsqlite3-dev

RUN mkdir /app
COPY archimista /app

WORKDIR /app

RUN gem install sqlite3 && bundle install && export  RAILS_ENV=development &&  rake db:setup && rake db:migrate && rake assets:clean

COPY . /app
