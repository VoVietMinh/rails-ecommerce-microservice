FROM ruby:2.7.0
RUN apt-get update -qq && apt-get install -y nodejs

WORKDIR /core-gateway
COPY /api-gateways/core-gateway/Gemfile* .
RUN bundle install
COPY api-gateways/core-gateway/ .