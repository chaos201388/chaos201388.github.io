#!/usr/bin/env bash

## https://stackoverflow.com/questions/20751352/suppress-warning-messages-using-mysql-from-within-terminal-but-password-written

mysql_config_editor set --login-path=local --host=localhost --user=username --password

mysql_config_editor print --all
