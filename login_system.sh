read -p "Enter Role (Admin - Editor - Viewer) " role

case $role in 
	Admin)
		echo "Welcome, Admin! You have full access."
		;;
	Editor)
		echo "Welcome, Editor! You can edit content."
		;;
	Viewer)
		echo "Welcome, Viewer! You can only view content"
		;;
	*)
		echo "Invalid $role. Please enter Admin, Editor, or Viewer"
		;;

esac

