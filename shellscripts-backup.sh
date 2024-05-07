#!/bin/bash
#This script will take backups for shell scripts daily

read -rp "Enter the scouce directory path" src_dir

read -rp "Enter the target directory path" tgt_dir

cur_timestamp=$(date "+%Y-%m-%d-%H-%M-%S")    #Creates a timestamp for the backup file name.

backup_file="$tgt_dir/$cur_timestamp.tgz"     #Forms the file name for the backup file using the target directory and timestamp.

if [ ! -d " $tgt_dir" ]     #Checks if the target directory exists. If not, it creates it.
then
	mkdir -p "$tgt_dir"
fi	

#Archives the source directory into a compressed tarball (.tgz) with the given timestamp and places it in the target directory.
tar czf "$backup_file" -C "$src_dir" .

if [ $? -eq 0 ]           #Checks the exit status of the tar command. If it's successful (exit status 0), prints a success message. Otherwise, prints a failure message.
then
        echo "Backup completed successfully"
else
	echo "Backup failed"

fi




