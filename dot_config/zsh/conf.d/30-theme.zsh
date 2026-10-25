
function powerline_precmd() {
    PWL_CMD="$(which powerline-go)"
    eval "$(
      "$PWL_CMD" -eval -shell zsh \
        -error $? \
        -east-asian-width \
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
case "$ZSH_THEME" in
    "powerline")
        if [ "$TERM" != "linux" ]; then
            install_powerline_precmd
        fi
        ;;
    "random")
        themes=(${ZDOTDIR}/themes/*.zsh-theme)
        N="${#themes[@]}"
        ((N=(RANDOM%N)+1))
        RANDOM_THEME=${themes[$N]}
        source "$RANDOM_THEME"
        echo "[oh-my-zsh] Random theme '$RANDOM_THEME' loaded..."
        ;;
    *)
        if [ -f "${ZDOTDIR}/${ZSH_THEME}.zsh-theme" ]; then
            source "${ZDOTDIR}/${ZSH_THEME}.zsh-theme"
        else
            source "${ZDOTDIR}/themes/${ZSH_THEME}.zsh-theme"
        fi
        ;;
esac
