# File created by Ansible and sourced by .bashrc

# Set some common variables locally

export PAGER=/bin/less
export EDITOR=/bin/vim
export VISUAL=/bin/vim

# I don't like systemctl's auto-paging feature
export SYSTEMD_PAGER=''

# Don't put duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it
shopt -s histappend

# Setting history file and line size
HISTSIZE=20000
HISTFILESIZE=40000

# After each command, append to the history file and reread it. Beware, this makes operations like !1 unusable
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# Check the window size after each command and, if necessary, update the values of LINES and COLUMNS
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will match all files and zero or more directories and subdirectories
shopt -s globstar

# Aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Automatic tmux session
if [[ $- = *i* ]] && [[ -z "$TMUX" ]] && [[ -n "$SSH_CONNECTION" ]]; then
  tmux attach-session -t ssh_tmux || tmux new-session -s ssh_tmux
fi
