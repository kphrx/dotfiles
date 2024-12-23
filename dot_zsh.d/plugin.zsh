# zplug "mafredri/zsh-async", from:"github", use:"async.zsh"

zinit ice pick"async.zsh" from"github"
zinit light mafredri/zsh-async

# # zplug "migutw42/zsh-fzf-ghq"

# zinit light marlonrichert/zsh-autocomplete
zinit light zsh-users/zsh-completions

# zplug "zsh-users/zsh-syntax-highlighting", defer:2

zinit light zdharma-continuum/fast-syntax-highlighting
# zinit ice wait'2'
# zinit load zsh-users/zsh-syntax-highlighting

zinit snippet OMZL::compfix.zsh
zinit snippet OMZL::completion.zsh
zinit snippet OMZL::directories.zsh
zinit snippet OMZL::functions.zsh
zinit snippet OMZL::grep.zsh
zinit snippet OMZL::history.zsh
zinit snippet OMZL::key-bindings.zsh
zinit snippet OMZL::termsupport.zsh
zinit snippet OMZL::misc.zsh

# zinit snippet OMZP::git-flow

zinit light asdf-vm/asdf
