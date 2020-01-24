export PATH="$HOME/bin:$HOME/.ec2/bin:$HOME/.rbenv/shims:$PATH"
export PATH="/Applications/MacVim.app/Contents/bin/:$PATH"
export PATH="$JAVA_HOME/bin:$PATH"

# git settings
source $(brew --prefix git)/etc/bash_completion.d/git-completion.bash
source $(brew --prefix git)/etc/bash_completion.d/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

export HISTSIZE=1000000
export HISTTIMEFORMAT='%Y/%m/%d %H:%M:%S '
