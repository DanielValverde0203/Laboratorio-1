#!/bim/bash

nombreusuario="$1"
nombregrupo="$2"

#Usuario Mascota
if id "$nombreusuario" &> /dev/null; then
       echo "Este usuario ya existe"
else 
 	sudo useradd "$nombreusuario"

fi


#LAB1
if grep -q "$nombregrupo" /etc/group; then
	echo "Este grupo ya existe"

else
	sudo groupadd "$nombregrupo"
fi

sudo usermod -aG "$nombregrupo" "$vboxuser"
#Lo cambie a dvalverde02 pero el programa aun lo detecta como vboxuser

sudo usermod -aG "$nombregrupo" "$nombreusuario"
