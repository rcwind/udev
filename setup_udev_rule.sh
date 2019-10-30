#!/bin/sh
baseDirForScriptSelf=$(cd "$(dirname "$0")"; pwd)

echo $1
sudo cp $baseDirForScriptSelf/$1 /etc/udev/rules.d/
#重新插拔设备即可
sudo udevadm control --reload
