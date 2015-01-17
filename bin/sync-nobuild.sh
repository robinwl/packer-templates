#!/bin/bash

# Source configuration
if [ -f "$REPO_DIR/config/remote.config" ]
then
        source $REPO_DIR/config/remote.config
fi

# Sync images to public server
if [[ -n $REMOTE_HOST && -n $REMOTE_USER && -n $REMOTE_DIR ]]
then
        cd $REPO_DIR
        rsync --delete -aHAXxv --numeric-ids --progress -e "ssh -T -c arcfour -o Compression=no -x" builds/ $REMOTE_USER@$REMOTE_HOST$
fi

