FROM elixir:1.3

MAINTAINER Nikko Miu <nikkoamiu@gmail.com>

# Install NodeJS
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install nodejs -y

# Install Global NPM Packages
RUN npm install -g brunch bower

# Install Hex
RUN mix local.hex --force

# Install Phoenix
RUN mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez --force
