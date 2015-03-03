# .bash_profile / .bashrc

# Really .bash_profile is for login shells
# and .bashrc is for non-login shells,
# but the distinction is not always clear
# and it's easy to just have them be the same.


# Set environment variables for all shells:

export PATH=$PATH:~/.local/bin   # local installs, largely Python
export PATH=$PATH:~/.cask/bin    # for Cask (Emacs packages)
export PATH=~/.rvm/bin:$PATH     # in case I'm using RVM

# WORKON_HOME considered harmful;
# default of ~/.local/share/virtualenvs preferred -
# but it's needed for elpy/pyvenv virtualenv support.
export WORKON_HOME=~/.local/share/virtualenvs
# It would be nicer to have pyvenv default like pew, but this will do.
# Note: Anaconda can be used via pew as `pew workon ~/anaconda`.


# If not running interactively, don't do anything.
case $- in         # "$-" expands to current option flags.
    *i*) ;;        # Including "i" means "interactive".
      *) return;;  # If not interactive, don't continue.
esac


# More things for interactive shells:

# Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it.
shopt -s histappend

# Control history size.
HISTSIZE=1000      # number of commands remembered in the command history
HISTFILESIZE=2000  # maximum lines stored in the history file

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Use "**" to expand deeply.
shopt -s globstar

# Make less more friendly for non-text input files. (See lesspipe(1).)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Set up git prompt.
source ~/.git-completion.sh
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"

# Grab Python virtual env info for prompt.
if [ -z ${VIRTUAL_ENV+x} ]
then
    VENV_NOTICE=""
else
    VENV_NOTICE=" (py: $(basename "$VIRTUAL_ENV"))"
fi

# Display an informative, nicely spaced prompt.
PS1='\n\[\033[0;34m\]\u@\h \w$VENV_NOTICE$(__git_ps1 " (%s)") \d \t\[\033[00m\]\n\$ '

# Enable color support by default.
alias ls='ls -Gp'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Provide short form ls aliases.
alias ll='ls -alF'
alias lh='ls -alFh'
alias la='ls -A'
alias l='ls -CF'

# easily check for a running program
alias got='ps awx | grep'

# (experimental) command-line setdiff
function setdiff () { comm -23 <(sort "$1") <(sort "$2"); }

# Easily start a simple local Python web server.
alias web='python -m SimpleHTTPServer'

# Easily run git.
alias g='git'
alias gi='git'

# Easily get IPython Notebook started up.
alias nb='ipython notebook --pylab=inline'

# Emacs in client/server, text or graphical mode:
alias e='emacsclient -c --alternate-editor="" -nw'
alias eg='emacsclient -c --alternate-editor=""'
export EDITOR='emacsclient -c --alternate-editor="" -nw'
