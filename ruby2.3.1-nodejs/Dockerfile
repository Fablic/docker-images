FROM ruby:2.3.1

ENV RUBYOPT -EUTF-8

RUN apt-get update
RUN apt-get install -y mysql-client
RUN curl -J -O -L 'https://drive.google.com/uc?export=download&id=0B4y35FiV1wh7cENtOXlicTFaRUE'
RUN tar xvzf mecab-0.996.tar.gz
RUN chmod -R 777 mecab-0.996
RUN cd mecab-0.996; ./configure --enable-utf8-only --prefix=/usr/local/; make; make install
RUN ldconfig
# yarnパッケージ管理ツールインストール
RUN apt-get update && apt-get -y install curl apt-transport-https wget && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn
# Node.jsをインストール
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get install nodejs
