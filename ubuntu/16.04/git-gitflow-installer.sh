#!/usr/bin/env bash

## https://launchpad.net/~git-core/+archive/ubuntu/ppa

sudo add-apt-repository -y ppa:git-core/ppa && \
    sudo apt update

sudo apt install -y git


## https://github.com/petervanderdoes/gitflow-avh/wiki#installing-git-flow

wget --no-check-certificate -q \
    https://raw.githubusercontent.com/petervanderdoes/gitflow-avh/develop/contrib/gitflow-installer.sh

sudo bash gitflow-installer.sh install stable && \
    sudo rm gitflow-installer.sh && \
    sudo rm -rf gitflow


echo '' >> ~/.bash_aliases

cat >> ~/.bash_aliases <<APPEND
# display git branch name in bash prompt
git_branch_name() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \w\\\$(git_branch_name) $ "
APPEND


# git config --global user.name "Foo Bar"
# git config --global user.email "foobar@gmail.com"

git config --global push.default simple

git config --global core.editor vim
git config --global core.autocrlf false
git config --global core.safecrlf warn

git config --global alias.br branch
git config --global alias.co checkout
git config --global alias.st status
git config --global alias.sd stash
git config --global alias.lg "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

# git config --global -e
