FROM ruby:2.5.7

RUN apt-get update
RUN apt-get install -y default-mysql-server

WORKDIR /opt
RUN git clone https://github.com/taku910/mecab.git
WORKDIR /opt/mecab/mecab
RUN ./configure  --enable-utf8-only \
  && make all check install \
  && ldconfig

WORKDIR /opt/mecab/mecab-ipadic
RUN ./configure --with-charset=utf8 \
  && make all install

WORKDIR /opt
RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git
WORKDIR /opt/mecab-ipadic-neologd
RUN /opt/mecab-ipadic-neologd/bin/install-mecab-ipadic-neologd -n -y
