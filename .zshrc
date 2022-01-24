export ANDROID_HOME="$HOME/Library/Android/sdk"

export PATH="$HOME/bin:$HOME/.ec2/bin:$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/Applications/MacVim.app/Contents/bin/:$PATH"
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/bzip2/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="$HOME/Applications/flutter/bin:$PATH"
export PATH="$ANDROID_HOME/tools:$PATH"
export PATH="$ANDROID_HOME/emulator:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"

#export LDFLAGS="-L/usr/local/opt/sqlite/lib"
#export LDFLAGS="-L/usr/local/opt/python@3.8/lib"
#export LDFLAGS="-L/usr/local/opt/zlib/lib"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"

#export CPPFLAGS="-I/usr/local/opt/sqlite/include"
#export CPPFLAGS="-I/usr/local/opt/zlib/include"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

#export PKG_CONFIG_PATH="/usr/local/opt/python@3.8/lib/pkgconfig"
#export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

export NRFSDK12_ROOT=$HOME/opt/others/nRF5_SDK_12.3.0_d7731ad
export AWS_USERNAME=junpei-kita
export EDITOR=vi

#For compilers to find readline you may need to set:
#  export LDFLAGS="-L/usr/local/opt/readline/lib"
#  export CPPFLAGS="-I/usr/local/opt/readline/include"
#
#For pkg-config to find readline you may need to set:
#  export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"

# pyenvさんに自動補完機能を提供してもらう
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi

# git settings
fpath=($(brew --prefix)/share/zsh/site-functions $fpath)

export HISTSIZE=1000000
export SAVEHIST=100000
export HISTTIMEFORMAT='%Y/%m/%d %H:%M:%S '
export HISTFILE="$HOME/.zsh_history"

source ~/.phpbrew/bashrc

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

autoload -Uz colors
autoload -U compinit

colors
compinit -u
bindkey -e

#PROMPT='[%*]%{$fg_bold[green]%} %{$fg[cyan]%}%c %{$reset_color%}%(?.%{$fg[green]%}.%{$fg[red]%})%B%(!.#.$)%b '

PROMPT="%{$fg[green]%}%m%(!.#.$) %{$reset_color%}"
PROMPT2="%{$fg[green]%}%_> %{$reset_color%}"
SPROMPT="%{$fg[red]%}correct: %R -> %r [nyae]? %{$reset_color%}"
RPROMPT="%{$fg[cyan]%}[%~]%{$reset_color%}"

source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
source /usr/local/share/zsh/site-functions/_aws
