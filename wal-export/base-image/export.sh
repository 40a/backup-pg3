#!/bin/sh

if [ -z "$WAL_DIR" ]; then
    echo "Please set WAL_DIR env variable" 
    exit
fi

for file in `ls $WAL_DIR`; do
    echo "Exporting $file..."
    ./export-file.sh $WAL_DIR/$file
done
