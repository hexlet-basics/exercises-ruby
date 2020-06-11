FROM melodyn/base-image:latest

# ruby:2.7.1
RUN gem install rubocop

WORKDIR /exercises-ruby

COPY --from=melodyn/base-image:latest /tmp/basics/common/* ./
COPY . .

ENV RUBYLIB=/exercises-ruby/lib
ENV PATH=/exercises-ruby/bin:$PATH

RUN bundle install
