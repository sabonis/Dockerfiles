# this is a comment
FROM ubuntu:14.04

MAINTAINER sabonis <sabonis.tw@gmail.com>

RUN apt-get update && apt-get install -y git
# Dependency needed by rbenv-build
RUN apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev curl
RUN apt-get clean

# Install rbenv
RUN git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
RUN git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
ENV PATH ~/.rbenv/bin:$PATH
RUN echo 'eval "$(rbenv init -)"' >> ~/.bashrc

# Install and setup RUBY 2.1.5
RUN bash -c 'rbenv install 2.1.5'
RUN bash -c 'rbenv global 2.1.5'
