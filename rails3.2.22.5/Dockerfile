FROM ruby:2.0.0

# install postgres native client
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

# install mysql native client
RUN apt-get install -y mysql-client --no-install-recommends && rm -rf /var/lib/apt/lists/*

# make workdir
RUN mkdir /myapp
WORKDIR /myapp

# build rails & gems
RUN gem install rails --version 3.2.22.5