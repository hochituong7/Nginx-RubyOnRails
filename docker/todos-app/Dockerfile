FROM ruby:2.7.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
# Install Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y --no-install-recommends yarn
RUN gem install bundler -v 2.1.4
RUN mkdir /todos-app
WORKDIR /todos-app
ADD Gemfile /todos-app/Gemfile
ADD Gemfile.lock /todos-app/Gemfile.lock
RUN bundle install
ADD . /todos-app
CMD ["rails", "server", "-p", "3001", "-b", "0.0.0.0"]
EXPOSE 3001