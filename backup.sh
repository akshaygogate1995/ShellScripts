#!/bin/bash


src=/f/Git/Practice/ShellScripts
tgt=/f/Git/Practice/ShellScripts/backups

curr_timestamp=$(date "+%Y-%m-%d-%H-%M-%S")
backup_file=$tgt/$curr_timestamp.tgz

echo "Taking backup at $curr_timestamp"

tar czf $backup_file --absolute-names $src

echo "Backup Complete"


