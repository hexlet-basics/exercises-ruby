FROM ruby:2

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

WORKDIR /exercises-ruby

# COPY package.json package.json
# COPY package-lock.json package-lock.json
# RUN npm install

COPY . /exercises-ruby
