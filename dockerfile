FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /rigelPortfolio
WORKDIR /rigelPortfolio
COPY Gemfile /rigelPortfolio/Gemfile
COPY Gemfile.lock /rigelPortfolio/Gemfile.lock
RUN bundle install
COPY . /rigelPortfolio