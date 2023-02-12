#!/usr/bin/bash
# move
mv sfleta_* /usr/local/bin/

#check
ls /usr/local/bin/
if [ ! -f /usr/local/bin/sfleta_cat ] || [ ! -f /usr/local/bin/sfleta_grep ]; then echo "file not exist!"; exit 1; fi
echo "all good -_-"