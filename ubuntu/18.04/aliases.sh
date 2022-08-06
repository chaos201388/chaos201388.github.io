#!/usr/bin/env bash

alias chdirs='find . -type d -print0 | xargs -0 chmod 755'
alias chfiles='find . -type f -print0 | xargs -0 chmod 644'
alias aic='sudo netstat -tnlp' # --tcp --numeric --listening --program (Active Internet Connetions)
