FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /notes
WORKDIR /notes
COPY Gemfile /notes/Gemfile
COPY Gemfile.lock /notes/Gemfile.lock
RUN bundle install
COPY . /notes