FROM hexletbasics/base-image:latest

ENV RUBYLIB=/exercises-ruby/lib
ENV PATH=/exercises-ruby/bin:$PATH

RUN apt-get update && \
    apt-get install -y ruby-full bundler && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /exercises-ruby

COPY Gemfile Gemfile.lock ./

RUN bundle install --jobs=4 --retry=3

COPY . .
