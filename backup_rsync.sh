#!/bin/bash
# Rsync backup script

SOURCE="/var/www/"
DEST="/backup/$(hostname)/"
LOG="/var/log/backup.log"

rsync -av --delete $SOURCE $DEST >> $LOG
