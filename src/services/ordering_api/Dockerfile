FROM ruby:2.7.0
RUN apt-get update -qq && apt-get install -y nodejs

WORKDIR /ordering_api
COPY /services/ordering_api/Gemfile* .
RUN bundle install
COPY services/ordering_api/ .

#RUN bundle exec rake db:migrate