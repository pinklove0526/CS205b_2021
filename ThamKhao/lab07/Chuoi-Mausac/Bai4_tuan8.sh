#!/bin/zsh
# Doi chu: hoc nhom -> Hoc Nhom
read -p "Nhap chuoi:" s1
echo $s1

ngam="euioaEUIOA"
LaNguyenAm()
{
	rt=$1
	for((j=0;j<${#ngam};j++));do
		if [ ${ngam:j:1} = $rt ] ; then
			echo $rt
			return 1;
		fi
	done
	return 0;
}
length=${$s1} # Lay chieu dai cua chuoi.

# d=${s1:0:1} # Lay ky tu dau tien cua s1 -> 0: la vi tri; 1: so ky tu can lay
# kq=`echo $d | tr [:lower:] [:upper:]`
# Chuyen kt dau tien thanh hoa
# dem=1

flag=1

for ((i=0;i<length;i++))
do
	d=${s1:$i:1}
	if [ $flag -eq 0 ] ; then
		kq=$kq`echo $d | tr [:upper:] [:lower:]`
		# echo $kq
	else
		kq=$kq`echo $d | tr [:lower:] [:upper:]`
		# echo $kq
	fi
	if [ "$d" = " " ] ; then
		flag=1
		kq=$kq" "
	else
		flag=0
	fi
done
echo $kq

echo "Nguyen am:"
dem=0
for((i=0;i<length;i++)); do
	if [ "${s1:i:1}" = " " ] ; then
		continue;
	else
		LaNguyenAm ${s1:i:1}
	fi
	if [ $? -eq 1 ] ; then
		dem=$(($dem+1))
	fi
done
echo $dem
exit 0
