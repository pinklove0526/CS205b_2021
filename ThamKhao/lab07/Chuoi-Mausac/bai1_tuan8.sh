#!/bin/zsh
echo "Nhap 1 chuoi :"
read a
len=${#a}
let "nguyenam=0"
let "khoangtrang=0"
let "phuam=0"
for((i=0;i<$len;i++))
do
	case ${a:$i:1} in
	"a") let "nguyenam=$nguyenam+1";;
	"i") let "nguyenam=$nguyenam+1";;
	"e") let "nguyenam=$nguyenam+1";;
	"o") let "nguyenam=$nguyenam+1";;
	"u") let "nguyenam=$nguyenam+1";;
	" ") let "khoangtrang=$khoangtrang+1";;
	*) let "phuam=$phuam+1";;
	esac
done
echo "So nguyen am: $nguyenam"
echo "So khoang trang: $khoangtrang"
echo "So phu am: $phuam"
