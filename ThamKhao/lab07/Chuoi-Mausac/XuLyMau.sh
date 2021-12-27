option1=$1
if [ -e "$option1" ]; then
	set $(more "$option1")
	for foo in $*
	do
		case foo in
		 "while") echo -e "\033[35m $foo \033[0m ";;
		 *) echo -e " $foo ";;
		esac
	done
fi
echo ""
