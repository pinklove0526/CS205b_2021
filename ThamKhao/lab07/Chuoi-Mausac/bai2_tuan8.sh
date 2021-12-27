#!/bin/zsh
echo "Nhap chuoi : "
read a
len=${#a}
for((i=$len-1;i>=0;i--))
do
	if [ "${a:$i:1}" = " " ]; then
		b=$b" "
	else
		b=$b${a:$i:1}
	fi
done
echo $b
exit 0
