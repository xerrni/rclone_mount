# rclone_mount
I made script to siplify mounting directory with rclone. <br />

Instalation:
----------
###1. Download script with:
```bash
wget https://raw.githubusercontent.com/xerrni/rclone_mount/master/rclone_mount.sh
```
###2. To use it just replace `src=""` and `dest=""` with your paths 
```bash
nano rclone_mount.sh
```
example:<br />
```bash
src="n:/"
dest="/home/seedbox/torrents/deluge/mount"
```
###3. Add execute permissions to the file with: <br />
`chmod +x rclone_mount.sh`<br />

Usage:
----------
`./rclone_mount`<br />
or if you want to use it in **Quiet** mode:<br />
`./rclone_mount -q`<br />
`./rclone_mount -Q`<br />
`./rclone_mount --quiet`<br />
