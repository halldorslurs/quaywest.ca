#!/bin/bash
#pw: quaywest2012
if [ ! -f sync.sh ]; then
        echo "Wrong directory"
        exit 1
fi

user="quaywestkitchen"
server=quaywest.ca
[ "$server" ] || server="quaywest.ca"

rsync -av --delete \
        --exclude sync.sh \
        --exclude .svn --exclude .git \
        . $user@$server:quaywestkitchen.ca

