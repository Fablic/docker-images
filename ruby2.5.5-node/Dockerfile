FROM circleci/ruby:2.5.5-node

RUN sudo apt-get update
RUN sudo apt-get install -y default-mysql-server
RUN sudo curl -J -O -L 'https://drive.google.com/uc?export=download&id=0B4y35FiV1wh7cENtOXlicTFaRUE'
RUN sudo tar xvzf mecab-0.996.tar.gz
RUN sudo chmod -R 777 mecab-0.996
RUN cd mecab-0.996; ls -l; ./configure --enable-utf8-only --prefix=/usr/local/; sudo make; sudo make install
RUN sudo ldconfig
