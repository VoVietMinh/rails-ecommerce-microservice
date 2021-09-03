FROM ruby:2.7.0
RUN apt-get update -qq && apt-get install -y nodejs

WORKDIR /basket_api
COPY /services/basket_api/Gemfile* .
RUN bundle install
COPY services/basket_api/ .
