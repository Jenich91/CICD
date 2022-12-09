#!/usr/bin/bash
# move
mv s21_* /usr/local/bin/

#check
ls /usr/local/bin/
if [ ! -f /usr/local/bin/s21_cat ] || [ ! -f /usr/local/bin/s21_grep ]; then echo "file not exist!"; exit 1; fi
echo "all good -_-"