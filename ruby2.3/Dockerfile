FROM circleci/ruby:2.3

RUN sudo apt-get update
RUN sudo apt-get install -y mysql-server
RUN sudo curl -J -O -L 'https://drive.google.com/uc?export=download&id=0B4y35FiV1wh7cENtOXlicTFaRUE'
RUN sudo tar xvzf mecab-0.996.tar.gz
RUN sudo chmod -R 777 mecab-0.996
RUN cd mecab-0.996; ./configure --enable-utf8-only --prefix=/usr/local/; make; sudo make install
RUN sudo ldconfig
