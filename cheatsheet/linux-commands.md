# Linux Commands

```
ln -sfn <target> <symbolic>
```

```
unlink /path/to/symbolic
```

```
find . -maxdepth 1 -not -name "." -printf "%f\n"
```

```
sed -i -e 's/.*searchlines.*/replace/g' filename
```

```
for pid in $(ps -ef | awk '/keyword/ {print $2}'); do kill -9 $pid; done
```

```
EIP=$(curl -s https://httpbin.org/ip | awk '/origin/ {print $2}' | sed 's/"//g')
```

```
ulimit -a
```

```
seq 10 | xargs -n 1 echo
```

```
df -hT
```

```
du -h --max-depth 1 <dirname>
```

```
ps -ef
```

```
netstat -tulpn
```

```
ssh -Nf -L
ssh -Nf -R
ssh -Nf -D
```

```
ssh -L 5566:0.0.0.0:22 remote_host
ssh -L 5566:remote_host:22 jump_host
```

## Ubuntu 16.04

### superuser

```
sudo -i
```

### services: enabled, running

```
systemctl list-unit-files | grep enabled
systemctl list-units --type=service --state=running
```

## Tarball and Compression

### gzip

```
# pack and compress
tar zcvf filename.tar.gz dirname

# extract and unpack
tar zxvf filename.tar.gz
```

### rar
