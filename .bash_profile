if [ -d .rbenv ]; then
  eval "$(rbenv init -)"
fi

if [ -f ~/.nvm/nvm.sh ]; then
  source ~/.nvm/nvm.sh
fi

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
