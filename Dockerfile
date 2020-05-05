FROM ruby:2.7.1

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# RUN apt-get update && apt-get install -yqq git python3-pkg-resources yamllint
RUN apt-get update && apt-get install -yqq git curl python3-pip libyaml-dev zip unzip
RUN apt-get install -yqq nodejs npm

RUN pip3 install yamllint
RUN apt-get install -yqq jq
RUN pip3 install yq
RUN npm install -g ajv-cli

RUN gem install rubocop

WORKDIR /exercises-ruby

COPY . .

ENV RUBYLIB=/exercises-ruby/lib

RUN bundle install
