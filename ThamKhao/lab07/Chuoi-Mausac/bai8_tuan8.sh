#!/bin/zsh
echo "Nhap chuoi 1:"
read f1
echo "Nhap chuoi 2:"
read f2
i=0
flag=0
while test $i -lt ${#f2}
do
	j=0
	k=$i
	while [ "${f2:$k:1}" = "${f1:$j:1}" ] && [ $j -lt ${#f1} ]
	do
		let "j=$j+1"
		let "k=$i+$j"
	done
	if test $j -eq ${#f1}; then
		let "i=$i+${#f2}"
		flag=1
	else
		let "i=$i+1"
	fi
done

if test $flag -eq 1; then
	echo "f1 la con cua f2"
else
	echo "f1 khong la con cua f2"
fi
exit 0
