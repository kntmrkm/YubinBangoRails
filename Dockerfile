FROM ruby:2.4.0
RUN apt-get update -qq && apt-get install -y build-essential nodejs
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
#開発向けはbundle installしない
#RUN bundle install
ADD . /myapp
