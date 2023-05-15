#!/bin/bash

# package install
sudo yum update -y
#sudo yum install -y gcc glibc-headers openssl-devel readline libyaml-devel readline-devel zlib zlib-devel

# rubyが直インストールで必要な場合はrbenvを入れるので以下のコメントアウトを外してください
# ruby setup
#git clone https://github.com/rbenv/rbenv.git ~/.rbenv
#echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
#echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
#source ~/.bash_profile
#git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

# rbenv 3.2.0
#RUBY_BUILD_BUILD_OPTS=--verbose rbenv install 3.2.0
#rbenv global 3.2.0

# install docker-compose
sudo mkdir -p /usr/local/lib/docker/cli-plugins
sudo curl -L https://github.com/docker/compose/releases/download/v2.17.3/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/lib/docker/cli-plugins/docker-compose
sudo chmod +x /usr/local/lib/docker/cli-plugins/docker-compose
sudo ln -s /usr/local/lib/docker/cli-plugins/docker-compose /usr/bin/docker-compose

# yarn install
#curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
#sudo yum install yarn

# node version
nvm install 16.0.0
nvm use 16.0.0
