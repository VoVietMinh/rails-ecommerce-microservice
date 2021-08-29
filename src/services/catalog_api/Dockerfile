FROM ruby:2.7.0
RUN apt-get update -qq && apt-get install -y nodejs

WORKDIR /catalog_api
COPY /services/catalog_api/Gemfile* .
RUN bundle install
COPY services/catalog_api/ .
