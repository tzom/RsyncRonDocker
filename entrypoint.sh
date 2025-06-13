#!/bin/sh

# Check env variables
: "${SOURCE_DIR:?Need to set SOURCE_DIR}"
: "${DEST_DIR:?Need to set DEST_DIR}"

# Create the dynamic crontab file
echo "0 0 * * * rsync -av --delete \"$SOURCE_DIR/\" \"$DEST_DIR/\"" > /etc/crontabs/root

echo "Using SOURCE_DIR=$SOURCE_DIR"
echo "Using DEST_DIR=$DEST_DIR"

# Start cron in foreground
crond -f -L /dev/stdout