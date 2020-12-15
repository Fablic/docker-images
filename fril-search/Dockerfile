# base
FROM fablic/ruby:2.5.7-mecab

ENV APP_ROOT=/usr/src/fril-search

# TODO:
# COPY -> bundle install とか
# COPY ./ ./

# TODO: dependency
# ADD ./src/fril-search $APP_ROOT

WORKDIR $APP_ROOT
# RUN RAILS_ENV=local bundle install

### # Add a script to be executed every time the container starts.
### COPY entrypoint.sh /usr/bin/
### RUN chmod +x /usr/bin/entrypoint.sh
### ENTRYPOINT ["entrypoint.sh"]
# EXPOSE 3000

# TODO: run
# Start the main process.
# CMD ["rails", "server", "-b", "0.0.0.0"]
