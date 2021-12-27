#!/bin/zsh
echo "Nhap 1 dong chu thu nhat: "
read a
echo "Nhap 1 dong chu thu hai: "
read b
c1=`echo $a | od -t d1`
c2=`echo $b | od -t d1`
b1=`echo $c1 | awk '{print $2}'`
b2=`echo $c2 | awk '{print $2}'`
let "tong = $b1 + $b2"
echo "Tong ma ASCII cua 2 ki tu: $tong"
exit 0
