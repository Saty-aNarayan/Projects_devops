#!/bin/bash
FileName="$1"
echo "FileName: $FileName"
DATE=$(date +"%Y%m%d_%H%M%S")
echo "DATE: $DATE"
name=${FileName}_${DATE}
echo "Archiving the file: $name"
tar -czf "$name.tar.gz" "$FileName"
echo "File archived successfully: $name.tar.gz"
