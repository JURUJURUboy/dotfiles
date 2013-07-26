# .bashrc
BASH_COMPLETION_DIR="/usr/local/etc/bash_completion.d"
GIT_COMPLETION_BASH="/usr/local/etc/bash_completion.d/git-completion.bash"
GIT_PROMPT_SH="/usr/local/etc/bash_completion.d/git-prompt.sh"

# 読み込み
if [ -f $BASH_COMPLETION_DIR/git-completion.bash ]; then
  source $GIT_PROMPT_SH
  source $GIT_COMPLETION_BASH
fi

# コマンドプロンプトの設定
if [ -f $BASH_COMPLETION_DIR/git-completion.bash ]; then
  export PS1='\[\033[1;34m\][\[\033[1;36m\]\w\[\033[1;34m\]]$(__git_ps1)>\[\033[0m\] '
elif [ -d /home/vagrant/ ]; then
  export PS1="\[\033[1;32m\][\[\033[1;36m\]\w\[\033[1;32m\]](vagrant)>\[\033[0m\] "
else
  export PS1="\[\033[1;34m\][\[\033[1;36m\]\w\[\033[1;34m\]]>\[\033[0m\] "
fi

# エイリアス
alias ll='ls -l'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias ls='ls -G'

export LANG='ja_JP.UTF-8'
export LC_ALL='ja_JP.UTF-8'
export LC_MESSAGES='ja_JP.UTF-8'
export LSCOLORS=gxfxcxdxbxegedabagacad
