#!/bin/bash

REPO_DIR=$(pwd)

# Source configuration
if [ -f "$REPO_DIR/config/remote.config" ]
then
	source $REPO_DIR/config/remote.config
fi

cd $REPO_DIR && git pull

# Clean up old builds and checksums
rm builds/virtualbox/*.box 
rm builds/virtualbox/CHECKSUM.*

cd packer

# Run the builds
find . -name \*.json -exec packer build {} \;

# Create checksums
cd $REPO_DIR/builds/virtualbox
md5sum *.box  > CHECKSUM.MD5
sha1sum *.box  > CHECKSUM.SHA1
sha512sum *.box > CHECKSUM.SHA512

cd $REPO_DIR
# Sync images to public server
if [[ -n $REMOTE_HOST && -n $REMOTE_USER && -n $REMOTE_DIR ]]
then
	cd $REPO_DIR
	rsync --delete -aHAXxv --numeric-ids --progress -e "ssh -T -c arcfour -o Compression=no -x" builds/ $REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR
fi
