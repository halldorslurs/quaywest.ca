#!/bin/bash
#pw: quaywest2012
if [ ! -f sync.sh ]; then
        echo "Wrong directory"
        exit 1
fi

user="quaywestkitchen"
server=ruggedfitness.ca
[ "$server" ] || server="ruggedfitness.ca"

rsync -av --delete \
        --exclude sync.sh \
        --exclude .svn --exclude .git \
        . $user@$server:quaywestkitchen.ca

