#!/usr/bin/env bash

mysql_config_editor set --login-path=local --host=localhost --user=username --password

mysql_config_editor print --all
