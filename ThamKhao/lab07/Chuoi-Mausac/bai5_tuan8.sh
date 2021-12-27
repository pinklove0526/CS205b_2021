#!/bin/zsh
echo "Nhap chuoi thu 1:"
read a
echo "Nhap chuoi thu 2:"
read b
c=""

for((i=0;i<${#a};i++))
do
	flag=0
	for((k=0;k<${#c};k++))
	do
		if [ "${a:$i:1}" = "${c:$k:1}" ] ; then
			flag=1
		fi
	done

	if [ $flag -eq 0 ]
	then
		flag1=0
		for((j=0;j<${#b};j++))
		do
			if [ "${a:$i:1}" = "${b:$j:1} ]; then
				if test $flag1 -eq 0 ; then
					c=$c${a:$i:1}
					flag1=1
				fi
			fi
		done
	fi
done
echo $c
exit 0
