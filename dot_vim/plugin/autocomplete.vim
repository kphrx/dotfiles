vim9script

var lspOpts = {
    autoHighlightDiags: v:true,
    # autoComplete: v:true,
    # omniComplete: v:false,
}
autocmd VimEnter * call LspOptionsSet(lspOpts)

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
# inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

# set foldmethod=expr
# set foldexpr=lsp#ui#vim#folding#foldexpr()
# set foldtext=lsp#ui#vim#folding#foldtext()
