# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

PS1="\[$(tput setaf 6; tput bold)\]\\w\[$(tput setaf 1; tput bold)\]#\[$(tput sgr0)\] "

mesg n || true
