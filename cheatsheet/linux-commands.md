# Linux Commands

## Uncategory

```
seq 10 | xargs -n 1 echo
```

```
ulimit -a
```

```
cat /proc/loadavg
```

## Search

```
find . -maxdepth 1 -not -name "." -printf "%f\n"
```

## Edit

```
sed -i -e 's/.*searchlines.*/replace/g' filename
```

## Tarball and Compression

### Gzip

```
# pack and compress
tar zcvf filename.tar.gz dirname

# extract and unpack
tar zxvf filename.tar.gz
```

## Tarball & GnuPG

### #1

```bash
echo RELOADAGENT | gpg-connect-agent
tar -cvzf - directory | gpg -c > directory.tar.gz.gpg
```

### #2

```bash
echo RELOADAGENT | gpg-connect-agent
gpg -d directory.tar.gz.gpg | tar -xvzf -
```

## Disk

```
df -hT
```

```
du -sh * | sort -h
du -h --max-depth 1 <dirname>
```

## Memory

```
free -m
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

### fstab - swap setting

```
UUID=b08f1748-3419-4427-adac-820aedab333a none            swap    sw              0       0
```
