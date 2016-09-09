# Append these lines to the bottom of existing .bashrc or .bash_profile

#
# GPG Configuration
#

export GPG_TTY=$(tty)

#
# Keychain configuration
#

## --clear flag to only allow cron jobs to use password less login
# /usr/bin/keychain --clear $HOME/.ssh/id_rsa
# --agents ssh,gpg seems to be required to make keychain work with gpg2
# after .ssh/id_rsa the GPG keyid SHORT format is added
/usr/bin/keychain --agents ssh,gpg $HOME/.ssh/id_rsa GPGHEXSHORTKEYHERE
source $HOME/.keychain/$HOSTNAME-sh
source $HOME/.keychain/$HOSTNAME-sh-gpg
