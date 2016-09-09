# Append these lines to the bottom of existing .bashrc or .bash_profile

#
# SSH Key Configuration
#

## --clear flag to only allow cron jobs to use password less login
# /usr/bin/keychain --clear $HOME/.ssh/id_rsa
/usr/bin/keychain $HOME/.ssh/id_rsa
source $HOME/.keychain/$HOSTNAME-sh


#
# GPG Key Configuration (gnupg v2)
#

export GPG_TTY=$(tty)

