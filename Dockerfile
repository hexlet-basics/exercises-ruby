FROM ruby:2

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt-get update && apt-get install -yqq git python3-pkg-resources yamllint

WORKDIR /exercises-ruby

COPY . /exercises-ruby

ENV RUBYLIB=/exercises-ruby/lib

RUN bundle install
