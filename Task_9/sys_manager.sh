menu(){

	echo "============= Linux System Manager =================="
	echo "1) Show System Information"
	echo "2) Check file Perimisions"
	echo "3) Change File Permisions"
	echo "4) Compress a File/Directory"
	echo "5) Decompress a File"
	echo "6) Exit"
	echo "======================================================="	
}

show_sys_info(){
	echo "Current User $(whoami)"
}

check_file_permisions(){
	read -p "Enter File name: " file
	if [[ -e $file ]];
	then 
		ls -l $file
	else
		echo "file doesnot exist"
	fi
}

change_file_permisions(){
	read -p "Enter the file or directory name: " x
	if [[ -e $x ]];
	then
		read -p "\nEnter new permisions: " permisions
		chmod $permisions $file
		echo "changed successfully"
	else
		echo "file/dir doesnot exist"
	fi
}

compress_file(){
	read -p "Enter the file or directory name: " x
	if [[ -e $x ]];
	then
		echo -e "choose compression\n 1) tar.gz\n2)zip"
		read -p "enter your option number " op
		if [[ $op -eq 1 ]];
		then
			tar -czvf "$x.tar.gz" $x
			echo "compressed successfully"
		elif [[ $op -eq 2 ]];
		then 
			zip -r "$x.zip" $x
			echo "compressed successfully"
		fi
	else
		echo "file/dir doesnot exist"
	fi
}

decompress_file(){
	read -p "Enter the file or directory name: " x
	if [[ -e $x ]];
	then
		if [[ $x == *.tar.gz ]];
		then
			tar -xzvf $x
			echo "file is extracted"
		elif [[ $x == *.zip ]];
		then
			unzip $x
			echo "file is extracted"
		else
			echo "$x file extention not supported"
		fi

	else
		echo "file/dir doesnot exist"
	fi
}
while true;
do 
	menu
	read -p "Enter Your Choice: " ch
	case $ch in 
		1)
			show_sys_info
			;;
		2)
			check_file_permisions
			;;
		3)
			change_file_permisions
			;;
		4)
			compress_file
			;;
		5)
			decompress_file
			;;
		6)
			echo "Bye";
			break
			;;
		*) 
			echo "Invalid Input"
			;;
	esac
done
