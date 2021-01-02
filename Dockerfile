FROM hexletbasics/base-image:latest

RUN apt-get update
RUN apt-get install -y ruby-full bundler

WORKDIR /exercises-ruby

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle install

COPY . .

ENV RUBYLIB=/exercises-ruby/lib
ENV PATH=/exercises-ruby/bin:$PATH
