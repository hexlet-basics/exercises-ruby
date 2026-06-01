FROM ruby:4.0-slim-bookworm AS ruby-source
FROM hexletbasics/base-image:latest

COPY --from=ruby-source /usr/local /usr/local

ENV RUBYLIB=/exercises-ruby/lib
ENV PATH=/exercises-ruby/bin:$PATH

RUN gem install bundler

WORKDIR /exercises-ruby

COPY Gemfile Gemfile.lock ./

RUN bundle install --jobs=4 --retry=3

COPY . .
