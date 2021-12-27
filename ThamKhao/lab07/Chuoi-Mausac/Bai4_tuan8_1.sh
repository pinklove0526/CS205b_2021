#!/bin/zsh
# Doi chu: hoc nhom -> Hoc Nhom
read -p "Nhap chuoi: " s1
echo $s1

length=${#s1} # Lay chieu dai cua chuoi.
d=${s1:0:1} # Lay ky tu dau tien cua s1 -> 0: la vi tri; 1: so ky tu can lay
kq=`echo $d | tr [:lower:] [:upper:]`
dem=1
for ((i=1;i<length-1;i++))
do
	d=${s1:$i:1}
	if [ "$d" = " " ] ; then
		kq="$kq$d"
		if [ "${s1:$(($i+1)):1}" = " " ] ; then
			kq="$kq${s1:$(($i+1)):1}";
			continue;
		else
		doi=`echo ${s1:$(($i+1)):1} | tr [:lower:] [:upper:]`
		kq="$kq$doi" # kq + " "
		fi
	else
		kq="$kq$d"
	fi
done
echo $kq
