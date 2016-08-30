#!/bin/sh

# USE AT YOUR OWN RISK!

# Copies a github user's public keys and installs them on a remote machine.

if [ "$#" -lt 1 ] || [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
  echo "Usage: $0 github_username [user@]machine" >&2
  exit 1
fi

GET_ID=$(curl -s -L github.com/$1.keys)

echo "$GET_ID" | ssh $2 "umask 077; test -d .ssh || mkdir .ssh; cat >> .ssh/authorized_keys;" || exit 1

cat <<EOF
The following keys (for github.com/$1) have been added -

$GET_ID

Verify everything went OK by logging in with "ssh '$2'", and check:

  .ssh/authorized_keys

to make sure that everything looks normal.

EOF
