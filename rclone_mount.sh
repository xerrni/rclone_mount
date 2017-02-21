#!/bin/bash
src="n:/"
dest="/home/seedbox/torrents/deluge/mount"

if [[ "$#" == "1"  ]]
then
        if [[ "$1" == "-Q" || "$1" == "-q" || "$1" == "--quiet" ]]
        then
                verbose="0"
        else
                verbose="1"
        fi
else
        verbose="1"
fi

#unmounting directory (if already mounted)
#fusermount outputs nothing if directory was mounted
test=`fusermount -u "${dest}" 2>&1`

if [[ "$verbose" == "1" ]]
then
        if [[ "$test" == "" ]]
        then
                echo "dir was mounted"
        else
                echo "dir was not mounted"
        fi
echo "mounting dir"
fi

#mounting dir
rclone mount "${src}" "${dest}" --allow-other &
if [[ "$verbose" == "1" ]]
then
        #wait for 5 seconds before trying if dir was succesfully mounted
        sleep 5
        if [[ `ls ${dest} | wc -l` != "0" ]]
        then
                echo "dir mounted"
        else
                echo "failed to mount dir"
                exit 1
        fi
fi
exit 0