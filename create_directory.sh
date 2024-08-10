#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <directory-name>"
    exit 1
fi

DIR="/home/waiphoneaung/assignment_script/$1"

if [ ! -d "$DIR" ]; then
    mkdir -p "$DIR"
    echo "Directory created: $DIR"
else
    echo "Directory already exists: $DIR"
fi

