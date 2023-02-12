#!/bin/sh
GREEN_BACK=$'\e[0;45m'
GREEN_TEXT=$'\e[0;42m'
RED_TEXT=$'\e[0;31m'
# FLASH_TEXT=$'\e[0;05m'
DONE_CHAR=$'\e[0;42m✔'
FAIL_CHAR=$'\e[0;41m✘\e[0;00m'
TO_DEFAULT=$'\e[0;00m'

counter=0

#############
./sfleta_grep "" input.txt > sfleta_grep_out
grep "" input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#######e#####
./sfleta_grep -e "" input.txt > sfleta_grep_out
grep -e "" input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#############
./sfleta_grep -e "her" input.txt input2.txt > sfleta_grep_out
grep -e "her" input.txt input2.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
##############
./sfleta_grep -e him input.txt input2.txt > sfleta_grep_out
grep -e him input.txt input2.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
##############
./sfleta_grep -e "\([a-z]\)\([a-z]\)[a-z]\2\1" input3.txt > sfleta_grep_out
grep -e "\([a-z]\)\([a-z]\)[a-z]\2\1" input3.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
##############
./sfleta_grep -e "[[:digit:]]" input3.txt  > sfleta_grep_out
grep -e "[[:digit:]]" input3.txt  > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
######e_multi_pattern#####
./sfleta_grep -e "But" input.txt -e "son" input2.txt > sfleta_grep_out
grep -e "But" input.txt -e "son" input2.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
############
./sfleta_grep -e "son" -e "But" input2.txt input.txt > sfleta_grep_out
grep -e "son" -e "But" input2.txt input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#######i######
./sfleta_grep -i "Him" input.txt input2.txt > sfleta_grep_out
grep -i "Him" input.txt input2.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#######v######
./sfleta_grep -v "[[:digit:]]" input3.txt > sfleta_grep_out
grep -v "[[:digit:]]" input3.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
##############
./sfleta_grep -v "+" input.txt input2.txt > sfleta_grep_out
grep -v "+" input.txt input2.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#######c######
./sfleta_grep -c "her" input.txt input2.txt > sfleta_grep_out
grep -c "her" input.txt input2.txt  > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#######l######
./sfleta_grep -l "she" input.txt input2.txt > sfleta_grep_out
grep -l "she" input.txt input2.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
##############
./sfleta_grep -n "she" input.txt input2.txt > sfleta_grep_out
grep -n "she" input.txt input2.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
##############
./sfleta_grep -h "she" input.txt input2.txt > sfleta_grep_out
grep -h "she" input.txt input2.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
##############
./sfleta_grep -h " " input2.txt input3.txt > sfleta_grep_out
grep -h " " input2.txt input3.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#############
./sfleta_grep -s "her" input1.txt input2.txt > sfleta_grep_out
grep -s "her" input1.txt input2.txt  > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#############
./sfleta_grep -s "son" input2.txt input1.txt > sfleta_grep_out
grep -s "son" input2.txt input1.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
############
./sfleta_grep -f regex2.txt input4.txt > sfleta_grep_out
grep -f regex2.txt input4.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
############
./sfleta_grep -f regex.txt input3.txt > sfleta_grep_out
grep -f regex.txt input3.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
############
./sfleta_grep -o "her" input.txt > sfleta_grep_out
grep -o "her" input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
############
./sfleta_grep -o "her" input.txt input2.txt > sfleta_grep_out
grep -o "her" input.txt input2.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
######e-multi-flag######
./sfleta_grep -e "her" input.txt -i > sfleta_grep_out
grep -e "her" input.txt -i > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
############
./sfleta_grep -e "her" -v input.txt > sfleta_grep_out
grep -e "her" -v input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
############
./sfleta_grep -e "her" -c input.txt > sfleta_grep_out
grep -e "her" -c input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
############
./sfleta_grep -e "her" -c input.txt > sfleta_grep_out
grep -e "her" -c input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
############
./sfleta_grep -e "her" input.txt -l > sfleta_grep_out
grep -e "her" input.txt -l > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
############
./sfleta_grep -e "her" input.txt -n > sfleta_grep_out
grep -e "her" input.txt -n > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
############
./sfleta_grep -e "her" input.txt -h > sfleta_grep_out
grep -e "her" input.txt -h > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
############
./sfleta_grep -e "her" input.txt -s > sfleta_grep_out
grep -e "her" input.txt -s > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
# ############
./sfleta_grep -f regex.txt input3.txt -e "her" input.txt > sfleta_grep_out
grep -f regex.txt input3.txt -e "her" input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
############
./sfleta_grep -e "er" input.txt -o > sfleta_grep_out
grep -e "er" input.txt -o > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
############
./sfleta_grep -e "er" input.txt -o > sfleta_grep_out
grep -e "er" input.txt -o > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#######i-multi-flag#####
./sfleta_grep -i "her" input.txt -v > sfleta_grep_out
grep -i "her" input.txt -v > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
############
./sfleta_grep -i "her" input.txt input2.txt -c > sfleta_grep_out
grep -i "her" input.txt input2.txt -c > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
############
./sfleta_grep -i "her" input.txt input2.txt -l > sfleta_grep_out
grep -i "her" input.txt input2.txt -l > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
############
./sfleta_grep -i "her" input.txt input2.txt -n > sfleta_grep_out
grep -i "her" input.txt input2.txt -n > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
############
./sfleta_grep -i "her" input.txt input2.txt -h > sfleta_grep_out
grep -i "her" input.txt input2.txt -h > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
############
./sfleta_grep -i "her" input.txt inpuht2.txt -s > sfleta_grep_out
grep -i "her" input.txt inpuht2.txt -s > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#############
./sfleta_grep -i -e "her" -f regex.txt input.txt > sfleta_grep_out
grep -i -e "her" -f regex.txt input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#############
./sfleta_grep -i -o "are" input.txt > sfleta_grep_out
grep -i -o "are" input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#######v-multi-flag######
./sfleta_grep -v "her" input.txt -v > sfleta_grep_out
grep -v "her" input.txt -v > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
# ############
./sfleta_grep -v "her" input.txt input2.txt -c > sfleta_grep_out
grep -v "her" input.txt input2.txt -c > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
# ############
./sfleta_grep -v "her" input.txt input2.txt -l > sfleta_grep_out
grep -v "her" input.txt input2.txt -l > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
# ############
./sfleta_grep -v "her" input.txt input2.txt -n > sfleta_grep_out
grep -v "her" input.txt input2.txt -n > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
# ############
./sfleta_grep -v "her" input.txt input2.txt -h > sfleta_grep_out
grep -v "her" input.txt input2.txt -h > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
# ############
./sfleta_grep -v "her" input.txt inpuht2.txt -s > sfleta_grep_out
grep -v "her" input.txt inpuht2.txt -s > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
# #############
./sfleta_grep -v -e "her" -f regex.txt input.txt > sfleta_grep_out
grep -v -e "her" -f regex.txt input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
# #############
./sfleta_grep -v -o "are" input.txt > sfleta_grep_out
grep -v -o "are" input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#######c-multi-flag######
./sfleta_grep -c -l "her" input.txt > sfleta_grep_out
grep -c -l "her" input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
############
./sfleta_grep -c "her" input.txt input2.txt -n > sfleta_grep_out
grep -c "her" input.txt input2.txt -n > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
# ############
./sfleta_grep -c "her" input.txt input2.txt -h > sfleta_grep_out
grep -c "her" input.txt input2.txt -h > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
# ############
./sfleta_grep -c "her" input.txt inpuht2.txt -s > sfleta_grep_out
grep -c "her" input.txt inpuht2.txt -s > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
# #############
./sfleta_grep -c -e "her" -f regex.txt input.txt > sfleta_grep_out
grep -c -e "her" -f regex.txt input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
# #############
./sfleta_grep -c -o "are" input.txt > sfleta_grep_out
grep -c -o "are" input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#######l-multi-flag######
./sfleta_grep -l "her" input.txt input2.txt -n > sfleta_grep_out
grep -l "her" input.txt input2.txt -n > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
# ############
./sfleta_grep -l "her" input.txt input2.txt -h > sfleta_grep_out
grep -l "her" input.txt input2.txt -h > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
# ############
./sfleta_grep -l "her" input.txt inpuht2.txt -s > sfleta_grep_out
grep -l "her" input.txt inpuht2.txt -s > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
# #############
./sfleta_grep -l -e "her" -f regex.txt input.txt > sfleta_grep_out
grep -l -e "her" -f regex.txt input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#############
./sfleta_grep -l -o "are" input.txt > sfleta_grep_out
grep -l -o "are" input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#######n-multi-flag######
./sfleta_grep -n "her" input.txt input2.txt -h > sfleta_grep_out
grep -n "her" input.txt input2.txt -h > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
# ############
./sfleta_grep -n "her" input.txt inpuht2.txt -s > sfleta_grep_out
grep -n "her" input.txt inpuht2.txt -s > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#############
./sfleta_grep -n -e "her" -f regex.txt input.txt > sfleta_grep_out
grep -n -e "her" -f regex.txt input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
# #############
./sfleta_grep -n -o "are" input.txt > sfleta_grep_out
grep -n -o "are" input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#######h-multi-flag######
./sfleta_grep -h "her" input.txt inpuht2.txt -s > sfleta_grep_out
grep -h "her" input.txt inpuht2.txt -s > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#############
./sfleta_grep -h -e "her" -f regex.txt input.txt > sfleta_grep_out
grep -h -e "her" -f regex.txt input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
# #############
./sfleta_grep -h -o "are" input.txt > sfleta_grep_out
grep -h -o "are" input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#######s-multi-flag######
./sfleta_grep -s -e "her" -f regex.txt input.txt > sfleta_grep_out
grep -s -e "her" -f regex.txt input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#############
./sfleta_grep -s -o "are" input.txt > sfleta_grep_out
grep -s -o "are" input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
#######f&o-multi-flag######
./sfleta_grep -o -f regex.txt input.txt > sfleta_grep_out
grep -o -f regex.txt input.txt > grep_out
counter=$((counter+1))
if cmp -s grep_out sfleta_grep_out ; then
 echo Test_done_№"$counter" ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_fail_№"$counter" ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi

# rm -rf *.txt

echo ${GREEN_BACK}'→→→' $'\e[0;05m All Test Done!'${TO_DEFAULT}