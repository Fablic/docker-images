# base
FROM fablic/ruby:2.5.7-mecab
ENV APP_ROOT=/usr/src/fril-search
ENV SRC_ROOT=./src/fril-search
ENV TZ=Asia/Tokyo
ARG bunlde_github_com
ARG rails_env


WORKDIR $APP_ROOT

### TODO: ユーザーが追加できない
### RUN adduser --group app && adduser --system app
### USER app

COPY $SRC_ROOT/Gemfile $APP_ROOT/Gemfile
COPY $SRC_ROOT/Gemfile.lock $APP_ROOT/Gemfile.lock

### TODO: vendor 以下にすると遅いから、いったんやめる
### RUN BUNDLE_GITHUB__COM=${bunlde_github_com}:x-oauth-basic RAILS_ENV=${rails_env} bundle install --path vendor/bundle
RUN BUNDLE_GITHUB__COM=${bunlde_github_com}:x-oauth-basic RAILS_ENV=${rails_env} bundle install
COPY $SRC_ROOT $APP_ROOT

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
# TODO: ここは上書きすると思うので、local は固定文字
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-e", "local"]

# for debug
### CMD ["tail", "-f", "/usr/bin/entrypoint.sh"]
