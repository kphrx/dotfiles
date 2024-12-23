ZSH="$(dirname "$0")"

# Shell functions dir
ZSH_FUNCTIONS="${ZSH}/functions"
# Zsh cache dir
ZSH_CACHE_DIR="${ZSH}/cache"

## setting load
[ -s "${ZSH}/setting.zsh" ] && load_with_compile "${ZSH}/setting.zsh"

# Plugin Manager
[ -s "/usr/local/opt/zinit/zinit.zsh" ] && load_with_compile "/usr/local/opt/zinit/zinit.zsh"
# autoload -Uz _zinit
# (( ${+_comps} )) && _comps[zinit]=_zinit
[ -s "${ZSH}/plugin.zsh" ] && load_with_compile "${ZSH}/plugin.zsh"

## tmux load
[ -s "${ZSH}/tmux.zsh" ] && load_with_compile "${ZSH}/tmux.zsh"

## theme load
[ -s "${ZSH}/theme.zsh" ] && load_with_compile "${ZSH}/theme.zsh"

## fzf load
eval "$(fzf --zsh)"
#[ -s "${ZSH}/fzf.zsh" ] && load_with_compile "${ZSH}/fzf.zsh"
