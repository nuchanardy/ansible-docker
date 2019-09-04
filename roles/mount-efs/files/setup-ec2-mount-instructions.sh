#!/bin/sh

HOST=$1

echo "install nfs"
sudo apt-get install nfs-common -y
echo "create directory efs"
mkdir efs
echo "mount file to efs using nfs client"
sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport $HOST:/ efs/
echo "Success!!!"
