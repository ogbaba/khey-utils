noelshack () {
	curl -X POST -F "fichier[]=@$1" "http://www.noelshack.com/api.php";
	echo "";
}

noelgui () {
	noelshack $1 | zenity --text-info;
}

alias noelcli="noelshack"
