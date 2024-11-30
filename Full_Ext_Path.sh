#!/bin/bash
FILE_PATHS=$(printf "%s\n" "$@")
echo -n "$FILE_PATHS" | xclip -selection clipboard


