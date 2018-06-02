# Linux Commands

```
find . -maxdepth 1 -not -name "." -printf "%f\n"
```

```
sed -i -e 's/.*searchlines.*/replace/g' filename
```

```
EIP=$(curl -s https://httpbin.org/ip | awk '/origin/ {print $2}' | sed 's/"//g')
```

```
ulimit -a
```

<!-- load averages -->

```
free -m
```

```
df -hT
```

```
du -sh * | sort -h
du -h --max-depth 1 <dirname>
```

```
seq 10 | xargs -n 1 echo
```

## 文字處理

## Tarball and Compression

### Gzip

```
# pack and compress
tar zcvf filename.tar.gz dirname

# extract and unpack
tar zxvf filename.tar.gz
```

## SSH

### Port Forwarding

```
ssh -Nf -L
ssh -Nf -R
ssh -Nf -D
```

```
ssh -L 5566:0.0.0.0:22 remote_host
ssh -L 5566:remote_host:22 jump_host
```

## Miscellaneous

### Superuser on Ubuntu 16.04

```
sudo -i
```

### Network Statistics

```
netstat -tulpn
```

### Process Status

```
ps -ef
```

```
for pid in $(ps -ef | awk '/keyword/ {print $2}'); do kill -9 $pid; done
```

### Service List

```
systemctl list-unit-files | grep enabled
systemctl list-units --type=service --state=running
```

### Symbolic Link

```
ln -sfn /path/to/target /path/to/symbolic
```

```
unlink /path/to/symbolic
```

### Universally Unique Identifier

```
uuid=$(uuidgen)

echo ${uuid^^}
echo ${uuid,,}
```
