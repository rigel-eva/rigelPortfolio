FROM ruby:2.3.3

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /rigelPortfolio
WORKDIR /rigelPortfolio
COPY Gemfile /rigelPortfolio/Gemfile
COPY Gemfile.lock /rigelPortfolio/Gemfile.lock
RUN npm install yarn -g
RUN bundle install
COPY . /rigelPortfolio
RUN RAILS_ENV=production rails assets:precompile