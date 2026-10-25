
function powerline_precmd() {
    eval "$(
      /usr/local/bin/powerline-go -eval -shell zsh \
        -error $? \
        -east-asian-width \
        -theme solarized-dark16 \
        -modules nix-shell,venv,vgo,ssh,host,cwd,perms,git,jobs,exit,newline,user,root \
        -cwd-max-depth 3 \
    )"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
  unfunction install_powerline_precmd
}

# Load the theme
if [ "$ZSH_THEME" = ""  ]; then
elif [ "$ZSH_THEME" = "powerline" ]; then
  ## Powerline load
  ##source "$(python3 -c 'from distutils.sysconfig import get_python_lib; print(get_python_lib())')/powerline/bindings/zsh/powerline.zsh"
  if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
  fi
elif [ "$ZSH_THEME" = "random" ]; then
  themes=($ZSH/themes/*.zsh-theme)
  N=${#themes[@]}
  ((N=(RANDOM%N)+1))
  RANDOM_THEME=${themes[$N]}
  source "$RANDOM_THEME"
  echo "[oh-my-zsh] Random theme '$RANDOM_THEME' loaded..."
else
  if [ -f "$ZSH/$ZSH_THEME.zsh-theme" ]; then
    source "$ZSH/$ZSH_THEME.zsh-theme"
  else
    source "$ZSH/themes/$ZSH_THEME.zsh-theme"
  fi
fi
