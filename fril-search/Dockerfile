# base
FROM fablic/ruby:2.5.7-mecab

ENV APP_ROOT=/usr/src/fril-search

# TODO: dependency
# docker-compose が、run のときに渡す
# ADD ./src/fril-search $APP_ROOT

RUN mkdir $APP_ROOT

WORKDIR $APP_ROOT
### RUN bundle install
###
### EXPOSE 3000
###
### # TODO: run
### CMD ["rails", "s"]
