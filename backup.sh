#!/bin/bash

# This checks if the number of arguments is correct
# If the number of arguments is incorrect ( $# != 2) print error message and exit
if [[ $# != 2 ]]
then
  echo "backup.sh target_directory_name destination_directory_name"
  exit
fi

# This checks if argument 1 and argument 2 are valid directory paths
if [[ ! -d $1 ]] || [[ ! -d $2 ]]
then
  echo "Invalid directory path provided"
  exit
fi

targetDirectory="$1"
destinationDirectory="$2"

echo "Encrypted passwords are stored in the directory: $targetDirectory"
echo "Backups of these passwords are stored in the directory: $destinationDirectory"

currentTS=$(date +%s)

backupFileName="backup-$currentTS.tar.gz"

# We're going to:
  # 1: Go into the target directory
  # 2: Create the backup file
  # 3: Move the backup file to the destination directory

# To make things easier, we will define some useful variables...

origAbsPath=$(pwd)

cd $destinationDirectory
destAbsPath=$(pwd)

cd $origAbsPath
cd $targetDirectory

yesterdayTS=$(($currentTS - 24 * 60 * 60))

declare -a toBackup

for file in $(pwd)
do
  fileTS=$(date -r "$file" +%s)
  if [[ $fileTS -gt $yesterdayTS ]]
  then toBackup+=($file)
  
  fi
done

if [ ${#toBackup[@]} -eq 0 ]; then
  echo "No New Files to Backup"
  exit 0
fi

tar -czvf $backupFileName ${toBackup[@]}

mv $backupFileName $destAbsPath
