FROM circleci/ruby:2.5.5-node

USER root
RUN apt-get update
RUN apt-get install -y default-mysql-server
RUN curl -J -O -L 'https://drive.google.com/uc?export=download&id=0B4y35FiV1wh7cENtOXlicTFaRUE'
RUN tar xvzf mecab-0.996.tar.gz
RUN chmod -R 777 mecab-0.996
RUN cd mecab-0.996; ls -l; ./configure --enable-utf8-only --prefix=/usr/local/; make; make install
RUN ldconfig
