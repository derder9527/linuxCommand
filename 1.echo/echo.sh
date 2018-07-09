#!/bin/bash
#echo
echo a string
#output a string
echo "a string"
#output a string
var1="a string "
#變數輸出
echo $var1
#output a string
echo "just $var1"
#output just a string
echo 'just $var1'
#output just $var1
echo \"just $var1\"
#output "just a string"
myname="dodo"
echo "my site is $myname9527"
#output my site is
#because there is no variable named $myname9527
var2="a string2"
echo $var1$var2

echo `ls /`
#use `` to execute some command and echo its result

echo `ls /` > "what's in root"
