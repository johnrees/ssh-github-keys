# SSH GitHub Keys

## Usage: `./ssh-github-keys.sh GITHUB_USERNAME [USER@]SERVER`

This script will copy github public keys from `github.com/username.keys` and append them to the `~/.ssh/authorized_keys` file.

Please use this at your own risk. It does no error checking and could be dangerous if github change the http endpoint.

## TODO:

* Error checking
* Prevent duplicate keys
* Label entries
* Add 'remove' option

## Acknowledgements:

This was heavily inspired by the great `ssh-copy-id` tool.
