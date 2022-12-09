#!/bin/sh
GREEN_BACK=$'\e[0;45m'
GREEN_TEXT=$'\e[0;42m'
RED_TEXT=$'\e[0;31m'
# FLASH_TEXT=$'\e[0;05m'
DONE_CHAR=$'\e[0;42m✔'
FAIL_CHAR=$'\e[0;41m✘'
TO_DEFAULT=$'\e[0;00m'

#############
./s21_cat -e input.txt input3.txt input2.txt > s21_cat_out
cat -e input.txt input3.txt input2.txt > cat_out

if cmp -s cat_out s21_cat_out ; then
 echo Test_e_ ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test1_e_fail ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
# ##############
./s21_cat -s input.txt input3.txt input2.txt > s21_cat_out
cat -s input.txt input3.txt input2.txt > cat_out

if cmp -s cat_out s21_cat_out ; then
 echo Test_s_ ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_s_fail ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
# ##############
./s21_cat -t input.txt input3.txt input2.txt > s21_cat_out
cat -t input.txt input3.txt input2.txt > cat_out

if cmp -s cat_out s21_cat_out ; then
 echo Test_t_ ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_t_fail ${FAIL_CHAR}${TO_DEFAULT}
  exit 1
fi
##############
./s21_cat -e -s input.txt input3.txt input2.txt > s21_cat_out
cat -e -s input.txt input3.txt input2.txt > cat_out

if cmp -s cat_out s21_cat_out ; then
 echo Test_e+s_ ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_e+s_fail ${FAIL_CHAR}${TO_DEFAULT}
 cat_out
  exit 1
fi
#############
./s21_cat -e -t input.txt input3.txt input2.txt > s21_cat_out
cat -e -t input.txt input3.txt input2.txt > cat_out

if cmp -s cat_out s21_cat_out ; then
 echo Test_e+t_ ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_e+t_fail ${FAIL_CHAR}${TO_DEFAULT}
 cat_out
  exit 1
fi
############
./s21_cat -s -t input.txt input3.txt input2.txt > s21_cat_out
cat -s -t input.txt input3.txt input2.txt > cat_out

if cmp -s cat_out s21_cat_out ; then
 echo Test_s+t_ ${DONE_CHAR}${TO_DEFAULT}
 else
  echo Test_s+t_fail ${FAIL_CHAR}${TO_DEFAULT}
 cat_out
  exit 1
fi

# rm -rf *.txt

echo ${GREEN_BACK}'→→→' $'\e[0;05m All Test Done!'${TO_DEFAULT}