# If not running interactively, don't do anything
case $- in
    *i*) ;;
    *) return;;
esac

# history
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# window size
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# LS_COLORS="di=00;32:"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

# COLORS
d_black_1_hex="#121212"
d_white_1_hex="#dadada"

d_black_1="233"
d_black_2="234"
d_black_3="235"
d_black_4="236"
d_gray_1="239"
d_gray_2="240"
d_gray_3="245"
d_gray_4="249"
d_white_0="15"
d_white_1="253"
d_red="203"
d_orange="208"
d_yellow_1="222"
d_yellow_2="229"
d_aquamarine_1="122"
d_aquamarine_2="72"
d_aquamarine_3="29"
d_cyan_1="66"
d_cyan_2="30"
d_pink_1="198"

if [[ -z "$INSIDE_EMACS" ]]; then
    echo -ne "\e]10;$d_white_1_hex\e\\"  # set default foreground
		echo -ne "\e]11;$d_black_1_hex\e\\"  # set default background
fi

#format: set;reset;foreground;background
# foreground -> 38;5;$my_color
# background -> 48;5;$my_color

LS_COLORS="\
rs=0:\
di=01;38;5;$d_aquamarine_3:\
ln=01;38;5;$d_cyan_1:\
mh=00:\
pi=38;5;$d_yellow_1:\
so=01;38;5;$d_pink_1:\
do=01;38;5;$d_pink_1:\
bd=01;38;5;$d_yellow_1:\
cd=01;38;5;$d_yellow_1:\
or=38;5;$d_red;01:\
mi=00:\
su=38;5;$d_gray_4;48;5;$d_red:\
sg=38;5;$d_black_1;48;5;$d_yellow_1:\
ca=38;5;$d_black_1;48;5;$d_red:\
tw=38;5;$d_black_1;48;5;$d_aquamarine_1:\
ow=38;5;$d_aquamarine_3;48;5;$d_aquamarine_1:\
st=38;5;$d_gray_4;48;5;$d_aquamarine_3:\
ex=01;38;5;$d_aquamarine_1:\
*.tar=01;38;5;$d_red:\
*.tgz=01;38;5;$d_red:\
*.arc=01;38;5;$d_red:\
*.arj=01;38;5;$d_red:\
*.taz=01;38;5;$d_red:\
*.lha=01;38;5;$d_red:\
*.lz4=01;38;5;$d_red:\
*.lzh=01;38;5;$d_red:\
*.lzma=01;38;5;$d_red:\
*.tlz=01;38;5;$d_red:\
*.txz=01;38;5;$d_red:\
*.tzo=01;38;5;$d_red:\
*.t7z=01;38;5;$d_red:\
*.zip=01;38;5;$d_red:\
*.z=01;38;5;$d_red:\
*.Z=01;38;5;$d_red:\
*.dz=01;38;5;$d_red:\
*.gz=01;38;5;$d_red:\
*.lrz=01;38;5;$d_red:\
*.lz=01;38;5;$d_red:\
*.lzo=01;38;5;$d_red:\
*.xz=01;38;5;$d_red:\
*.bz2=01;38;5;$d_red:\
*.bz=01;38;5;$d_red:\
*.tbz=01;38;5;$d_red:\
*.tbz2=01;38;5;$d_red:\
*.tz=01;38;5;$d_red:\
*.deb=01;38;5;$d_red:\
*.rpm=01;38;5;$d_red:\
*.jar=01;38;5;$d_red:\
*.war=01;38;5;$d_red:\
*.ear=01;38;5;$d_red:\
*.sar=01;38;5;$d_red:\
*.rar=01;38;5;$d_red:\
*.alz=01;38;5;$d_red:\
*.ace=01;38;5;$d_red:\
*.zoo=01;38;5;$d_red:\
*.cpio=01;38;5;$d_red:\
*.7z=01;38;5;$d_red:\
*.rz=01;38;5;$d_red:\
*.cab=01;38;5;$d_red:\
*.jpg=01;38;5;$d_pink_1:\
*.jpeg=01;38;5;$d_pink_1:\
*.gif=01;38;5;$d_pink_1:\
*.bmp=01;38;5;$d_pink_1:\
*.pbm=01;38;5;$d_pink_1:\
*.pgm=01;38;5;$d_pink_1:\
*.ppm=01;38;5;$d_pink_1:\
*.tga=01;38;5;$d_pink_1:\
*.xbm=01;38;5;$d_pink_1:\
*.xpm=01;38;5;$d_pink_1:\
*.tif=01;38;5;$d_pink_1:\
*.tiff=01;38;5;$d_pink_1:\
*.png=01;38;5;$d_pink_1:\
*.svg=01;38;5;$d_pink_1:\
*.svgz=01;38;5;$d_pink_1:\
*.mng=01;38;5;$d_pink_1:\
*.pcx=01;38;5;$d_pink_1:\
*.mov=01;38;5;$d_pink_1:\
*.mpg=01;38;5;$d_pink_1:\
*.mpeg=01;38;5;$d_pink_1:\
*.m2v=01;38;5;$d_pink_1:\
*.mkv=01;38;5;$d_pink_1:\
*.webm=01;38;5;$d_pink_1:\
*.ogm=01;38;5;$d_pink_1:\
*.mp4=01;38;5;$d_pink_1:\
*.m4v=01;38;5;$d_pink_1:\
*.mp4v=01;38;5;$d_pink_1:\
*.vob=01;38;5;$d_pink_1:\
*.qt=01;38;5;$d_pink_1:\
*.nuv=01;38;5;$d_pink_1:\
*.wmv=01;38;5;$d_pink_1:\
*.asf=01;38;5;$d_pink_1:\
*.rm=01;38;5;$d_pink_1:\
*.rmvb=01;38;5;$d_pink_1:\
*.flc=01;38;5;$d_pink_1:\
*.avi=01;38;5;$d_pink_1:\
*.fli=01;38;5;$d_pink_1:\
*.flv=01;38;5;$d_pink_1:\
*.gl=01;38;5;$d_pink_1:\
*.dl=01;38;5;$d_pink_1:\
*.xcf=01;38;5;$d_pink_1:\
*.xwd=01;38;5;$d_pink_1:\
*.yuv=01;38;5;$d_pink_1:\
*.cgm=01;38;5;$d_pink_1:\
*.emf=01;38;5;$d_pink_1:\
*.ogv=01;38;5;$d_pink_1:\
*.ogx=01;38;5;$d_pink_1:\
*.aac=00;38;5;$d_cyan_1:\
*.au=00;38;5;$d_cyan_1:\
*.flac=00;38;5;$d_cyan_1:\
*.m4a=00;38;5;$d_cyan_1:\
*.mid=00;38;5;$d_cyan_1:\
*.midi=00;38;5;$d_cyan_1:\
*.mka=00;38;5;$d_cyan_1:\
*.mp3=00;38;5;$d_cyan_1:\
*.mpc=00;38;5;$d_cyan_1:\
*.ogg=00;38;5;$d_cyan_1:\
*.ra=00;38;5;$d_cyan_1:\
*.wav=00;38;5;$d_cyan_1:\
*.oga=00;38;5;$d_cyan_1:\
*.opus=00;38;5;$d_cyan_1:\
*.spx=00;38;5;$d_cyan_1:\
*.xspf=00;38;5;$d_cyan_1q:"

# PS1
ps1_git_branch () {
    branch_exist=`git branch 2>/dev/null | grep '^*' | colrm 1 2`
    if [[ $branch_exist == "" ]]; then
        echo ""
    else
        echo "($branch_exist)"
    fi
}

ps1_directory () {
    PWD_ARRAY=(${PWD//// })
    case "${#PWD_ARRAY[@]}" in
        "0")
            echo "$PWD"
            ;;
        "1" | "2")
            echo "$PWD/"
            ;;
        *)
            echo "↪[${PWD_ARRAY[-2]}/${PWD_ARRAY[-1]}]"
            ;;
    esac
}

PS1="\[\e[01;38;5;66m\]\u@\h\[\e[00m\]:\
\[\e[1;38;5;198m\]\$(ps1_directory)\[\e[00m\]:\
\[\e[38;5;208m\]\$(ps1_git_branch)
\[\e[00m\]-\$ "

# Environment variable
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cask/bin:$PATH"
export EDITOR="emacsclient -nw"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# aliases
alias rm='rm --preserve-root'
alias ll='ls -aBltr'
alias la='ls -A'
alias l='ls -CF'
alias e='$EDITOR'
alias ems='systemctl --user stop emacs'
alias emss='systemctl --user start emacs'


###-begin-pm2-completion-###
### credits to npm for the completion file model
#
# Installation: pm2 completion >> ~/.bashrc  (or ~/.zshrc)
#

COMP_WORDBREAKS=${COMP_WORDBREAKS/=/}
COMP_WORDBREAKS=${COMP_WORDBREAKS/@/}
export COMP_WORDBREAKS

if type complete &>/dev/null; then
  _pm2_completion () {
    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$COMP_CWORD" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           pm2 completion -- "${COMP_WORDS[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _pm2_completion pm2
elif type compctl &>/dev/null; then
  _pm2_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       pm2 completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _pm2_completion + -f + pm2
fi
###-end-pm2-completion-###

eval $(/home/tony/.linuxbrew/bin/brew shellenv)
