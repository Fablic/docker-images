FROM cimg/ruby:2.6.10-node

COPY mysql.list /etc/apt/sources.list.d/

RUN sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 467B942D3A79BD29
RUN sudo apt-get update
RUN sudo apt-get install -y mysql-client=5.7.37-1ubuntu18.04 libmagickcore-dev
RUN gem install bundler -v 1.17.3
