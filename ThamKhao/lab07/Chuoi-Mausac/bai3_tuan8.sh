#!/bin/zsh
echo "Nhap chuoi: "
read d
 b=`echo $d | tr [a-z] [A-Z]`
 c=`echo $d | tr [A-Z] [a-z]`
echo $b
echo $c
exit 0
