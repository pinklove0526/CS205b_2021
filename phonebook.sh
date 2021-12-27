#!/bin/zsh
# A phone book application
exit=0
phoneBook="phonebook.txt"
while [ $exit -ne 1 ]
do
echo Select the Operation
# printf "..." put something here to display menu
printf "Your choice number is: "
read answer
# if [ ... ] answer is the 1st choice
then
printf "Enter the first name: "
# read ... (read line echo below to choose correct variable)
printf "Enter the last name: "
# read ... (read line echo below to choose correct variable)
printf "Enter the phone number: "
# read ... (read line echo below to choose correct variable)
echo "$fname $lname:$number" &amp;gt;&amp;gt; $phoneBook
# elif [ ... ] answer is 2nd choice
then
printf "Enter the option\n1.Display all\n2.Display specific one\n"
printf "Your option is: "
read option
if [ "$option" -eq 1 ]
then
echo The available phone records are:
cat $phoneBook
else
printf "Enter the name or phone number: "
read option
echo The available phone records are:
# Use grep with $option and $phoneBook
fi
# elif [ ... ] 3rd choice
then
printf "1. Sort by first name\n2. Sort by last name\n3. Sort by phone number\n"
printf "Enter the corresponding number to sort: "
read pattern
echo The sorted list of phone book by first name:
echo -------------------------------------------
if [ "$pattern" -eq 1 ]
then
sort -t" " -k 1 $phoneBook
echo -------------------------------------------
elif [ "$pattern" -eq 2 ]
then
# sort -t" " -k ... $phoneBook (put the correct number in ...) (Hint: read sort above and below and guess or find guide about sort)
echo -------------------------------------------
else
sort -t":" -k 3 $phoneBook
echo -------------------------------------------
fi
elif [ "$answer" -eq 4 ]
then
printf "Enter the phone number to delete record: "
# read ... (put correct variable here)
sed -i "/$phone/d" $phoneBook
elif [ "$answer" -eq 5 ]
then
exit=1
else
printf "No such options. Please select again\n"
fi
done
