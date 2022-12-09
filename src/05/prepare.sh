#!/usr/bin/expect -f
#copy to remote-pc
spawn scp -o "StrictHostKeyChecking no" s21_cat s21_grep student@192.168.1.2:~
expect -exact "\rstudent@192.168.1.2's password: "
send -- "student\r"
expect eof

# enter on remote-pc
spawn ssh -o "StrictHostKeyChecking no" student@192.168.1.2
expect -exact "\rstudent@192.168.1.2's password: "
send -- "student\r"
expect eof
