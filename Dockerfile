FROM melodyn/base-image:latest

RUN apt-get install -y ruby-full
RUN gem install rubocop
RUN gem install bundler

WORKDIR /exercises-ruby

COPY --from=melodyn/base-image:latest /tmp/basics/common/* ./
COPY . .

ENV RUBYLIB=/exercises-ruby/lib
ENV PATH=/exercises-ruby/bin:$PATH

RUN bundle install
