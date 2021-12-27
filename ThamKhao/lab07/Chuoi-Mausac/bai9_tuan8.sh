#!/bin/zsh
echo "Nhap ten file 1: "
read f1
if test -f $f1; then
	fn=${less $f1}
	echo "Noi dung file: $fn"
	hoa="LINUX"
	thuong="linux"
	tam=""
	i=0
	while test $i -lt ${#fn}
	do
		j=0
		k=$i
		while [ "${fn:$k:1}" = "${thuong:$j:1}" ] && [ $j -lt 5 ]
		do
			let "j=$j+1"
			let "k=$i+$j"
		done
		if test $j -eq 5; then
			tam=$tam$hoa
			let "i=$i+5"
		else
			tam=$tam${fn:$i:1}
			let "i=$i+1"
		fi
	done
fi
echo $tam > tam.txt
exit 0
