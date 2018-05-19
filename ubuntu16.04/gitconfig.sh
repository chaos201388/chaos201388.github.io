#!/usr/bin/env bash

# git config --global user.email "foobar@example.com"
# git config --global user.name "Foo Bar"

git config --global push.default simple

git config --global core.editor vim

git config --global core.autocrlf false
git config --global core.safecrlf warn

git config --global alias.br branch
git config --global alias.co checkout
git config --global alias.st status
git config --global alias.sd stash
git config --global alias.lg "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

# echo '' >> ~/.bashrc
# cat >> ~/.bashrc <<APPEND
# # display git branch name in bash prompt
# git_branch_name() {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# }
# export PS1="\u@\h \e[94m\w\e[93m\$(git_branch_name)\e[0m $ "
# APPEND
