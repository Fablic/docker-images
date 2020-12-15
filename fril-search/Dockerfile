# base
FROM fablic/ruby:2.5.7-mecab
ENV APP_ROOT=/usr/src/fril-search
ARG bunlde_github_com

# TODO:
# COPY -> bundle install とか

# TODO: dependency
COPY ./src/fril-search $APP_ROOT

WORKDIR $APP_ROOT
RUN BUNDLE_GITHUB__COM=${bunlde_github_com}:x-oauth-basic RAILS_ENV=local bundle install

### # Add a script to be executed every time the container starts.
### COPY entrypoint.sh /usr/bin/
### RUN chmod +x /usr/bin/entrypoint.sh
### ENTRYPOINT ["entrypoint.sh"]
# EXPOSE 3000

# TODO: run
# Start the main process.
# CMD ["rails", "server", "-b", "0.0.0.0"]
