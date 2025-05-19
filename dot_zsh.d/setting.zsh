# ========================
# Other settings
# ========================

# Autoload colors
autoload -Uz colors;colors
export CLICOLOR=1

# Locale and charactor
export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

# Compilation flags and path
export LD_LIBRARY_PATH=/usr/local/lib
export CPPFLAGS="-I/usr/local/include"
export LDFLAGS="-L/usr/local/lib"
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
# export ARCHFLAGS="-arch x86_64"

# Pager
export PAGER=less

# History size
# export HISTFILE=~/.zsh/history
export HISTSIZE=500000
export SAVEHIST=500000

# TERM color fix for tmux vim
export TERM=xterm-256color

# Extend wild card
setopt extended_glob

setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_all_dups   # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history          # share command history data

# Show window name
set -g set-titles on
set -g set-titles-string '#W'

# path cleaning

## allow directories only (-/)
## reject world-writable directories (^W)
fpath=(${ASDF_DIR}/completions $fpath)
fpath=(${(u)fpath})

## Enable completion
autoload -Uz compinit
compinit -u

## 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

## ../ の後は今いるディレクトリを補完しない
zstyle ':completion:*' ignore-parents parent pwd ..

## sudo の後ろでコマンド名を補完する
zstyle ':completion:*:sudo:*' command-path $path

## ps コマンドのプロセス名補完
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# '#' 以降をコメントとして扱う
setopt interactive_comments

# ディレクトリ名だけでcdする
setopt auto_cd

# typo修正
setopt correct
export SPROMPT="Did you mean %B%F{4}%r%f%b? [Yes/No/Abort/Edit]: "

# Enable zmv
autoload -Uz zmv

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Alias
alias sudo='sudo '
alias vi='vim'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias ls='ls -G -F'
alias xz='xz -T 4'
alias zshconfig="vim ~/.zshrc"
alias reload="exec zsh -l"

### pip upgrade all package
alias pip3-upgrades="python3 -m pip list --outdated --format=legacy | awk '{print set-titles-string}' | xargs python3 -m pip install -U"

## Aria2
alias aria2c="aria2c --file-allocation=falloc"
alias aria2dl="aria2c -k1M -s10 -x10"
alias aria2dl-withcookie="aria2dl --load-cookie ${HOME}/Downloads/cookies.txt"

## wget file
alias wget-content="wget --content-disposition"

## Laravel artisan
alias artisan="php artisan"

# Python2 newest
alias python="python3"

## Sublime Text 3
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

alias jq-mastodon-timeline="jq -r 'map(.account.display_name+\" \"+\"@\"+.account.username+\" \"+.id+\"\\n\" + .content+\"\\n\" + ( .media_attachments|map(.url)|join(\",\")|if .==\"\" then \"\" else .+\"\n\" end ))[]'"
