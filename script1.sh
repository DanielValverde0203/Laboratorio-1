

#!/bin/bash


if [ $# -ne 1 ]; then

	echo "Usage: $0 <file_path>"
	exit 1
fi

file="$1"

if [ -e "$file" ]; then

 	permisos_archivo=$(stat -c "%A" $file)

	get_permissions_verbose () {
	usuario=${permisos_archivo:1:3}
	grupo=${permisos_archivo:4:3}
	otro=${permisos_archivo:7:3}
	}

	echo "usuario"
	echo "grupo"
	echo "otro"

else
	echo "Error: el archivo $# no existe"
	exit 2

fi

exit
