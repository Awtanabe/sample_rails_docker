FROM ruby:2.6
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD . /myapp

# FROM ruby:2.3.3
# # build-essntial: rubyで必要なもの libpq-dev: postgres クライアント
# RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# # コンテナ内の作業ディレクトリs
# RUN mkdir /myapp

# # WORKDIRは cd
# WORKDIR /myapp

# # ADD ホストのファイル 設置先
# ADD Gemfile /myapp/Gemfile
# ADD Gemfile.lock /myapp/Gemfile.lock
# # RUNはbuildする時に実行するコマンド
# # CMDはコンテナで実行する時
# RUN bundle install
# # bundle installした
# # ADD . /myapp
