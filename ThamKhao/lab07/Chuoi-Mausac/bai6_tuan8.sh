#!/bin/zsh
echo "Nhap 1 dong van ban: "
read a
flag=1
for((i=0;i<${#a};i++))
do
	c=`echo ${a:$i:1} | od -t d1` ## Xuat thuoc tinh cua ki tu thu i tuong ung
	b=`echo $c | awk '{print $2}'` # Cat lay ma ASCII tai cot 2 cua ki tu thu i
	if [ $b -ge 97 ] && [ $b -le 122 ] # Ki tu thuoc [a-z]
	then
		let "flag=1" # Bat co danh dau flag
	elif [ $b -ge 65 ] && [ $b - le 90 ] # Ki tu thuoc [A-Z]
	then
		let "flag=1"
	elif [ "${a:$i:1}" = "." ] || [ "${a:$i:1}" = ":" ] || [ "${a:$i:1}" = "," ] || [ "${a:$i:1}" = " " ]
		# So sanh ki tu thu i co thuoc dau '.' hoac ',' hoac ':'
	then
		let "flag=1"
	else
		let "flag=0"
		break
	fi
done
if [ $flag -eq 1 ]
then
	echo "Day la doan van ban "
else
	echo "Day chang phai la doan van ban"
fi
exit 0
