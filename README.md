# rclone_mount
I made script to siplify mounting directory with rclone. <br />

1. Download script with: <br />
`wget https://raw.githubusercontent.com/xerrni/rclone_mount/master/rclone_mount.sh`
2. To use it just replace `src=""` and `dest=""` with your paths <br />
`nano rclone_mount.sh` <br />
example:<br />
`src="n:/"` <br />
`dest="/home/seedbox/torrents/deluge/mount"` <br />
3. Add execute permissions to the file with: <br />
`chmod +x rclone_mount.sh`<br />
4. Use the script with:<br />
`./rclone_mount`<br />
or if you want to use it in **Quiet** mode:<br />
`./rclone_mount -q`<br />
`./rclone_mount -Q`<br />
`./rclone_mount --quiet`<br />
