## SNAP 
### Retain historical version of 2
~~~
sudo snap set system refresh.retain=2
~~~

### Script to clean old packages
~~~
#!/bin/bash
# Removes old revisions of snaps
# CLOSE ALL SNAPS BEFORE RUNNING THIS
set -eu

LANG=en_US.UTF-8 snap list --all | awk '/disabled/{print $1, $3}' |
    while read snapname revision; do
        snap remove "$snapname" --revision="$revision"
    done

    
chmod +x <file>.sh
sudo ./<file>.sh
~~~

## List folders size
~~~
sudo du --exclude="/home" -x -h -a / | sort -r -h | head -30
sudo du -h /var/ | sort -rh | head -5
sudo du -h --max-depth=1 /var
~~~ 

## Purge journal and clean DNF cache
~~~
sudo journalctl --vacuum-size=100M
dnf clean all
~~~
## Clean trash from podman/docker
~~~
podman/docker system prune -a
~~~
