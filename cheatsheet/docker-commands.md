# Docker Commands

```
sudo usermod -aG docker ${USER}
exec bash -i
id -nG
```

```
docker version

docker run --detach --name sql-server --env="MYSQL_ROOT_PASSWORD=password" mysql:5.7
docker run --detach --name www-server --publish 80:80 nginx:1.13

docker container list -a
docker image list

docker exec -it sql-server bash
docker exec -it www-server bash
```
