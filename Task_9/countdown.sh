read -p "Enter Number: " num

countdown(){
	count=$1
	while [[ $count -gt 0 ]];
	do
		echo "$count" 
		sleep 1
		((count--))
	done
	echo "Time is up!"
}

countdown $num
