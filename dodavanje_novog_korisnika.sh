    #!/bin/bash
    while [ x$username = "x" ]; do
    read -p "Unesite ime novog korisnika : " username
    if id -u $username >/dev/null 2>&1; then
    echo "Korisnik već postoji"
    username=""
    fi
    
    done
    
    while [ x$group = "x" ]; do
    read -p "Unesite grupu, grupa će se stvoriti ukoliko nije prethodno napravljena : " group
    if id -g $group >/dev/null 2>&1; then
    echo "grupa već postoji"

    else
    groupadd $group

    fi

    done

    read -p "Molim vas unesite skriptu [/bin/bash] : " bash
    if [ x"$bash" = "x" ]; then
    bash="/bin/bash"

    fi

    read -p "Molim vas unesite homedir [/home/$username] : " homedir
    if [ x"$homedir" = "x" ]; then
    homedir="/home/$username"

    fi

    read -p "Molim vas potvrdu [y/n]" confirm
    if [ "$confirm" = "y" ]; then
    useradd -g $group -s $bash -d $homedir -m $username

    fi
