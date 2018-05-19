# RabbitMQ Notes

- AMQP (Advanced Message Queuing Protocol)
- RabbitMQ
- References

## AMQP (Advanced Message Queuing Protocol) 

## RabbitMQ

### Installation

https://packages.erlang-solutions.com/erlang/#tabs-ubuntu

```
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
sudo dpkg -i erlang-solutions_1.0_all.deb
rm erlang-solutions_1.0_all.deb
```

```
sudo apt-get update
sudo apt-get install esl-erlang -y
```

https://www.rabbitmq.com/install-debian.html

```
echo "deb https://dl.bintray.com/rabbitmq/debian xenial main" \
| sudo tee /etc/apt/sources.list.d/bintray.rabbitmq.list
```

```
wget -O- https://www.rabbitmq.com/rabbitmq-release-signing-key.asc \
| sudo apt-key add -
```

```
sudo apt-get update
sudo apt-get install rabbitmq-server -y
```

### Configuration

https://www.rabbitmq.com/access-control.html

```
sudo tee /etc/rabbitmq/rabbitmq.conf -a >/dev/null <<EOF
loopback_users = none
EOF
```

```
sudo systemctl restart rabbitmq-server
```

https://stackoverflow.com/questions/22850546/cant-access-rabbitmq-web-management-interface-after-fresh-install

```
sudo rabbitmqctl add_user test test
sudo rabbitmqctl set_user_tags test administrator
sudo rabbitmqctl set_permissions -p / test ".*" ".*" ".*"
```

### Plugins

https://www.rabbitmq.com/web-stomp.html

```
sudo rabbitmq-plugins enable rabbitmq_web_stomp_examples
```

https://www.rabbitmq.com/management.html

```
sudo rabbitmq-plugins enable rabbitmq_management
```

### Usage - Part 1

```
sudo rabbitmqctl status
```

```
systemctl status rabbitmq-server
service rabbitmq-server status
```

```
ps -ef | grep rabbitmq
```

```
sudo tail -f /var/log/rabbitmq/rabbit@instance.log
```

### Usage - Part 2

```
sudo rabbitmqctl stop_app
sudo rabbitmqctl reset
sudo rabbitmqctl start_app
```

### php-amqplib

- https://github.com/php-amqplib/php-amqplib
- https://github.com/rabbitmq/rabbitmq-tutorials/tree/master/php

### stompjs

- https://github.com/jmesnil/stomp-websocket
- https://stomp-js.github.io/stomp-websocket/codo/class/Client.html

### rabbitmq/rabbit-stress

https://github.com/rabbitmq/rabbit-stress

## References

Articles

- [RabbitMQ入门教程（概念，应用场景，安装，使用）](http://www.jianshu.com/p/dae5bbed39b1)
- https://en.wikipedia.org/wiki/RabbitMQ
- [RabbitMQ 學習筆記 - 安裝、入門、Work Queues](https://andyyou.github.io/2017/06/08/rabbitmq-notes/)
- [RabbitMQ - Documentation: Table of Contents](https://www.rabbitmq.com/documentation.html)

Videos

- [RabbitMQ in 5 Minutes](https://www.youtube.com/watch?v=deG25y_r6OY)
