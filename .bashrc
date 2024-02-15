# ~~~~~~~~~~~~~~~ Default ~~~~~~~~~~~~~~~~~~~~~~~~

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

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

# ~~~~~~~~~~~~~~~ History ~~~~~~~~~~~~~~~~~~~~~~~~

export HISTFILE=~/.histfile
export HISTSIZE=25000
export SAVEHIST=25000
export HISTCONTROL=ignorespace


# ~~~~~~~~~~~~~~~ Prompt ~~~~~~~~~~~~~~~~~~~~~~~~

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
# Explicitly unset color (default anyhow). Use 1 to set it.
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_DESCRIBE_STYLE="branch"
# export GIT_PS1_SHOWUPSTREAM="auto git"

# if [[ -f "$XDG_CONFIG_HOME/bash/gitprompt.sh" ]]; then
# 	source "$XDG_CONFIG_HOME/bash/gitprompt.sh"
# fi

# PROMPT_COMMAND='__git_ps1 "\u@\h:\W" " \n$ "'
# colorized prompt
PROMPT_COMMAND='__git_ps1 "\[\e[33m\]\u\[\e[0m\]@\[\e[34m\]\h\[\e[0m\]:\[\e[35m\]\W\[\e[0m\]" " \n$ "'

. "$HOME/.cargo/env"

# ~~~~~~~~~~~~~~~ NVM ~~~~~~~~~~~~~~~~~~~~~~~~
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fpath=($fpath "/home/matheus/.zfunctions")

# ~~~~~~~~~~~~~~~ Perl ~~~~~~~~~~~~~~~~~~~~~~~~
PATH="/home/matheus/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/matheus/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/matheus/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/matheus/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/matheus/perl5"; export PERL_MM_OPT;

# ~~~~~~~~~~~~~~~ Go ~~~~~~~~~~~~~~~~~~~~~~~~
export PATH=$PATH:/usr/local/go/bin
export GOBIN=/usr/local/bin
export GOPATH=$HOME/go/

# ~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~~~
alias la='ls -A'
alias ll='ls -alF'
alias l='ls -CF'
alias gs="git status"
alias gb="git branch"
alias gp="git pull"
alias gco="git checkout"
alias gcb="git checkout -b"
alias t="tmux"
alias chrome="google-chrome"

