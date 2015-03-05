# this is a comment
FROM ubuntu:14.04

MAINTAINER sabonis <sabonis.tw@gmail.com>

ENV PATH ~/.rbenv/bin:~/.rbenv/shims:$PATH

RUN apt-get update && \
    apt-get install -y git \
# Dependency needed by rbenv-build
    autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev curl \
# Dependency needed by rails
    libsqlite3-dev nodejs && \
    apt-get clean

# Install rbenv
RUN git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
RUN git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
RUN echo 'eval "$(rbenv init -)"' >> ~/.bashrc

# Install and setup RUBY 2.2.0
RUN bash -c 'rbenv install 2.2.0'
RUN bash -c 'rbenv global 2.2.0'

VOLUME /server
WORKDIR /server

# Install Rails and bundles it needs.
RUN bash -c 'gem install rails'

CMD bash -c 'bundle install && rails server -b 0.0.0.0'

EXPOSE 3000
