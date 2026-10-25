# ZSH="$(dirname "$0")"

# Shell functions dir
ZSH_FUNCTIONS="${ZDOTDIR}/functions"
# Zsh cache dir
ZSH_CACHE_DIR="${XDG_CACHE_HOME}/zsh"

# Plugin Manager
[ -s "/usr/local/opt/zinit/zinit.zsh" ] && load_with_compile "/usr/local/opt/zinit/zinit.zsh"
# autoload -Uz _zinit
# (( ${+_comps} )) && _comps[zinit]=_zinit

## fzf load
[ type fzf > /dev/null 2>&1 ] && eval "$(fzf --zsh)"

## mc load
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C "$HOME/.local/bin/mc" mc
