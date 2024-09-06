# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, you're AFK bruh
case $- in
    *i*) ;;
      *) return;;
esac

# No scrub commands in my history
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=420
HISTFILESIZE=1337

# Optimize window size after every 360 no-scope
shopt -s checkwinsize

# Make 'less' more friendly, just like your mom's cooking
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Chroot check - who needs it? Just in case tho
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Set up the most savage prompt ever
PS1='${debian_chroot:+($debian_chroot)}\[\033[38;5;118m\]🎮 \u@\h in \W 🔥 \$ \[\033[00m\]'

# xterm title for maximum swag
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e[38;5;118m\]🎮 \u@\h: \[\e[38;5;27m\]\w 🔥 \$ \[\e[0m\]"
    ;;
esac

# Colorize ls and other lame commands
if [ -x /usr/bin/dircolors ]; then
    eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# More dank aliases because we're not noobs
alias ll='ls -alF --color=auto' # Long list, all files, frag everyone
alias la='ls -A --color=auto'   # Hidden files? We see all
alias l='ls -CF --color=auto'   # Neat and clean, like our headshots

# Get notified when you pull off a sick combo
alias alert='notify-send --urgency=low -i "$( [ $? = 0 ] && echo "🔥 VICTORY ROYALE" || echo "💀 EPIC FAIL" )" "$(history | tail -n1 | sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'' )"'

# Load your secret weapon - custom aliases
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# Load programmable completion for easier fragging
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Let's get this bread - update everything in one command
alias fullupdate='sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoremove -y && sudo apt-get autoclean'
alias bedit='vim ~/.bashrc' # Edit this epic file

# Some next-level shortcuts to own the day
export pc="/mnt/c/Users/fafag/OneDrive/"
export pc_downloads="/mnt/c/Users/fafag/Downloads"
export os="/mnt/c/Users/fafag/OneDrive/Documentos/School/Utep Classes/Fall 2024/Operating Systems"
export pl="/mnt/c/Users/fafag/OneDrive/Documentos/School/Utep Classes/Fall 2024/Programming Languages"
export ml="/mnt/c/Users/fafag/OneDrive/Documentos/School/Utep Classes/Fall 2024/Machine Learning"
export geolab="/mnt/c/Users/fafag/OneDrive/Documentos/School/Utep Classes/Fall 2024/Geology/Lab"
export geolecture="/mnt/c/Users/fafag/OneDrive/Documentos/School/Utep Classes/Fall 2024/Geology/Lecture"

# Load NVM - Node Version Manager because JS is everywhere
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

# Git is life, keep it cool
alias gad='git add -A'   # Add everything like a pro
alias gpush='git push origin master' # Push to the top like a legend

# Make sure we're always in color mode - no gray screens here
force_color_prompt=yes

rgb() {
    R=$(shuf -i 0-255 -n 1)
    G=$(shuf -i 0-255 -n 1)
    B=$(shuf -i 0-255 -n 1)
    echo -e "Random RGB Color: \033[38;2;${R};${G};${B}mRGB(${R}, ${G}, ${B})\033[0m"
}

# Display some MLG art every time you start a new session
echo -e "\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m"
echo -e "\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m\e[31m;\e[0m\e[31m;\e[0m\e[31m;\e[0m\e[31m;\e[0m\e[31m;\e[0m\e[31md\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31md\e[0m\e[31m;\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mc\e[0m\e[31ml\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mx\e[0m\e[31m;\e[0m\e[31m;\e[0m\e[31m;\e[0m\e[31m;\e[0m\e[31m;\e[0m\e[31m.\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m"
echo -e "\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[31m'\e[0m\e[31m,\e[0m\e[31m,\e[0m\e[31mo\e[0m\e[31mx\e[0m\e[31ml\e[0m\e[31m;\e[0m\e[31m'\e[0m \e[0m\e[31m;\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mo\e[0m \e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31m.\e[0m\e[31m;\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31m:\e[0m.\e[0m.\e[0m\e[31m;\e[0m\e[31mc\e[0m\e[31mx\e[0m\e[31mx\e[0m\e[31m,\e[0m\e[31m,\e[0m\e[31m,\e[0m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m"
echo -e "\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m\e[31m'\e[0m\e[31m,\e[0m\e[31mx\e[0m\e[31mx\e[0m\e[31m:\e[0m\e[31m:\e[0m.\e[0m \e[0m \e[0m \e[0m\e[31m.\e[0m\e[31mx\e[0m\e[31mx\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mo\e[0m \e[0m \e[0m\e[31m:\e[0m\e[31m:\e[0m\e[31m:\e[0m.\e[0m \e[0m\e[31m;\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mx\e[0m\e[31mx\e[0m\e[31m;\e[0m \e[0m \e[0m \e[0m \e[0m\e[31m:\e[0m\e[31m:\e[0m\e[31md\e[0m\e[31mx\e[0m\e[31m:\e[0m\e[31m'\e[0m.\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m"
echo -e "\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m\e[31m;\e[0m\e[31mo\e[0m\e[31mo\e[0m\e[31mc\e[0m\e[31m:\e[0m.\e[0m.\e[0m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[31m'\e[0m\e[31md\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mo\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[31m;\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mx\e[0m\e[31m:\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m.\e[0m\e[31m;\e[0m\e[31mc\e[0m\e[31ml\e[0m\e[31mo\e[0m\e[31mc\e[0m.\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m"
echo -e "\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m.\e[0m\e[31m;\e[0m\e[31ml\e[0m\e[31ml\e[0m\e[31m;\e[0m.\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[31m.\e[0m\e[31md\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mo\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[31m;\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31md\e[0m\e[31m;\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m\e[31m,\e[0m\e[31ml\e[0m\e[31ml\e[0m\e[31mc\e[0m.\e[0m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m"
echo -e "\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m\e[31m:\e[0m\e[31md\e[0m\e[31m;\e[0m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[31m.\e[0m\e[31md\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mo\e[0m\e[31m.\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m.\e[0m\e[31m:\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31md\e[0m\e[31m;\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m\e[31m'\e[0m\e[31mk\e[0m\e[31mc\e[0m.\e[0m \e[0m\e[37m \e[0m\e[37m \e[0m"
echo -e "\e[0m\e[37m \e[0m \e[0m \e[0m\e[31md\e[0m\e[31md\e[0m\e[31m,\e[0m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m\e[31m.\e[0m\e[31m'\e[0m\e[31md\e[0m\e[31md\e[0m\e[31md\e[0m\e[31md\e[0m\e[31md\e[0m\e[31md\e[0m\e[31m:\e[0m\e[31m.\e[0m\e[31m.\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m.\e[0m\e[31m.\e[0m\e[31m;\e[0m\e[31md\e[0m\e[31md\e[0m\e[31md\e[0m\e[31md\e[0m\e[31md\e[0m\e[31md\e[0m\e[31m;\e[0m\e[31m.\e[0m.\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m\e[31m'\e[0m\e[31md\e[0m\e[31mk\e[0m\e[31m.\e[0m \e[0m\e[37m \e[0m"
echo -e "\e[0m \e[0m\e[31m:\e[0m\e[31mk\e[0m\e[31mx\e[0m.\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[31md\e[0m\e[31mx\e[0m\e[31mc\e[0m.\e[0m"
echo -e "\e[0m \e[0m\e[31mk\e[0m\e[31mk\e[0m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[31mo\e[0m\e[31mk\e[0m\e[31m.\e[0m"
echo -e "\e[0m \e[0m\e[31mk\e[0m\e[31mk\e[0m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[31mo\e[0m\e[31mk\e[0m\e[31m.\e[0m"
echo -e "\e[0m \e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31m,\e[0m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[31m'\e[0m\e[31md\e[0m\e[31mk\e[0m\e[31m.\e[0m"
echo -e "\e[0m \e[0m \e[0m\e[31mx\e[0m\e[31mk\e[0m.\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m.\e[0m\e[31m.\e[0m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m.\e[0m\e[31m.\e[0m\e[31m.\e[0m.\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m\e[31m.\e[0m\e[31m.\e[0m\e[31m.\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m\e[31m.\e[0m\e[31m.\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[31mx\e[0m\e[31mk\e[0m\e[31m'\e[0m \e[0m"
echo -e "\e[0m\e[37m \e[0m \e[0m.\e[0m\e[31mc\e[0m\e[31mo\e[0m\e[31m'\e[0m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m.\e[0m\e[31ml\e[0m\e[31mo\e[0m\e[31mx\e[0m\e[31mk\e[0m\e[31md\e[0m\e[31mo\e[0m\e[31mo\e[0m\e[31mc\e[0m.\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m.\e[0m\e[31mc\e[0m\e[31mx\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mx\e[0m\e[31mc\e[0m.\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m\e[31m;\e[0m\e[31md\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mx\e[0m\e[31mo\e[0m\e[31m.\e[0m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m\e[31m;\e[0m\e[31mo\e[0m\e[31mo\e[0m\e[31md\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mo\e[0m\e[31mo\e[0m\e[31m'\e[0m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m\e[31m.\e[0m\e[31mo\e[0m\e[31ml\e[0m\e[31m.\e[0m \e[0m\e[37m \e[0m"
echo -e "\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[31m:\e[0m\e[31mx\e[0m\e[31mo\e[0m\e[31m,\e[0m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m\e[31mx\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mx\e[0m\e[31mc\e[0m.\e[0m\e[31mc\e[0m\e[31mx\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mx\e[0m\e[31mc\e[0m.\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m.\e[0m\e[31m;\e[0m\e[31md\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mo\e[0m\e[31m.\e[0m\e[31m:\e[0m\e[31md\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31m.\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m\e[31m.\e[0m\e[31ml\e[0m\e[31mk\e[0m\e[31ml\e[0m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m"
echo -e "\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m.\e[0m\e[31m:\e[0m\e[31mo\e[0m\e[31ml\e[0m\e[31m;\e[0m.\e[0m \e[0m\e[37m \e[0m \e[0m\e[31m.\e[0m\e[31mx\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mx\e[0m.\e[0m \e[0m \e[0m\e[31ml\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31m'\e[0m \e[0m \e[0m \e[0m.\e[0m\e[31m'\e[0m\e[31ml\e[0m\e[31mo\e[0m\e[31ml\e[0m\e[31m.\e[0m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m"
echo -e "\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m\e[31m;\e[0m\e[31md\e[0m\e[31mo\e[0m\e[31m:\e[0m\e[31m:\e[0m \e[0m\e[31m.\e[0m\e[31mo\e[0m\e[31mx\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m.\e[0m\e[31mo\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31md\e[0m\e[31m'\e[0m \e[0m\e[31m,\e[0m\e[31m:\e[0m\e[31mo\e[0m\e[31md\e[0m\e[31mc\e[0m\e[31m.\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m"
echo -e "\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m\e[31m,\e[0m\e[31m,\e[0m\e[31mx\e[0m\e[31m;\e[0m\e[31m;\e[0m\e[31md\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mx\e[0m\e[31m;\e[0m\e[31m;\e[0m\e[31md\e[0m\e[31m:\e[0m\e[31m,\e[0m.\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m"
echo -e "\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m \e[0m\e[31m'\e[0m\e[31m;\e[0m\e[31m;\e[0m\e[31m;\e[0m\e[31ml\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31md\e[0m\e[31m;\e[0m\e[31m;\e[0m\e[31m;\e[0m\e[31m;\e[0m \e[0m \e[0m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m"
echo -e "\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m \e[0m \e[0m \e[0m\e[31m:\e[0m\e[31m:\e[0m\e[31m:\e[0m\e[31m:\e[0m\e[31m:\e[0m\e[31m:\e[0m\e[31m:\e[0m\e[31ml\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31mk\e[0m\e[31md\e[0m\e[31m:\e[0m\e[31m:\e[0m\e[31m:\e[0m\e[31m:\e[0m\e[31m:\e[0m\e[31m:\e[0m\e[31m:\e[0m\e[31m.\e[0m \e[0m \e[0m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m"
echo -e "\e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m\e[37m \e[0m"

echo -e "\033[38;5;226m( ͡° ͜ʖ ͡°) Welcome back, MLG Pro! Time to wreck some noobs! ( ͡° ͜ʖ ͡°)\033[0m"

# Function to get and speak the weather (Requires curl and jq)
weather_report() {
    local location="79903"
    local weather=$(curl -s "http://wttr.in/$location?format=3")
    echo -e "The current weather for El Paso, Texas: $weather\n\n"
    espeak "The current weather for El Paso, Texas, $weather" -p 100 -s 170
}

espeak "Hello Master Wayne, How may I be of assistance today?" -p 100 -s 170

weather_report
