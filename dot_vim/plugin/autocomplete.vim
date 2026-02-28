vim9script

var lspOpts = {
    autoHighlightDiags: v:true,
    autoComplete: v:true,
    omniComplete: v:true,
    ignoreCompleteItemsIsIncomplete: ['fsautocomplete', 'rust-analyzer', 'sourcekit-lsp']
}
autocmd VimEnter * call LspOptionsSet(lspOpts)

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
# inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

# set foldmethod=expr
# set foldexpr=lsp#ui#vim#folding#foldexpr()
# set foldtext=lsp#ui#vim#folding#foldtext()

var lspServers = [
    # {
    #     name: 'vscode-html-language-server',
    #     filetype: ['html'],
    #     path: '/usr/local/bin/vscode-html-language-server',
    #     args: ['--stdio'],
    # },
    # {
    #     name: 'vscode-css-language-server',
    #     filetype: ['css'],
    #     path: '/usr/local/bin/vscode-css-language-server',
    #     args: ['--stdio'],
    # },
    # {
    #     name: 'vscode-json-language-server',
    #     filetype: ['json'],
    #     path: '/usr/local/bin/vscode-json-language-server',
    #     args: ['--stdio'],
    # },
    # {
    #     name: 'vscode-eslint-language-server',
    #     filetype: ['javascript'],
    #     path: '/usr/local/bin/vscode-eslint-language-server',
    #     args: ['--stdio'],
    # },
    # {
    #     name: 'vscode-markdown-language-server',
    #     filetype: ['markdown'],
    #     path: '/usr/local/bin/vscode-markdown-language-server',
    #     args: ['--stdio'],
    # },
    # {
    #     name: 'vim-language-server',
    #     filetype: ['vim'],
    #     path: '/usr/local/bin/vim-language-server',
    #     args: ['--stdio'],
    # },
    # {
    #     name: 'typescript-language-server',
    #     filetype: ['javascript', 'typescript'],
    #     path: '/usr/local/bin/typescript-language-server',
    #     args: ['--stdio'],
    # },
    {
        name: 'csharp-ls',
        filetype: ['cs'],
        path: expand('$HOME/.dotnet/tools/csharp-ls'),
        args: [],
        syncInit: v:true,
    },
    {
        name: 'fsautocomplete',
        filetype: ['fsharp'],
        path: expand('$HOME/.dotnet/tools/fsautocomplete'),
        args: [],
        initializationOptions: {
            AutomaticWorkspaceInit: v:true,
        },
        customNotificationHandlers: {
            'fsharp/notifyWorkspace': (lspserver: dict<any>, reply: dict<any>) => {
            },
            'fsharp/testDetected': (lspserver: dict<any>, reply: dict<any>) => {
            },
            'fsharp/fileParsed': (lspserver: dict<any>, reply: dict<any>) => {
            },
            'fsharp/documentAnalyzed': (lspserver: dict<any>, reply: dict<any>) => {
            },
        },
    },
    {
        name: 'kotlin-lsp',
        filetype: ['kotlin'],
        path: '/usr/local/bin/kotlin-lsp',
        args: ['--stdio'],
        syncInit: v:true,
    },
    {
        name: 'clangd',
        filetype: ['c', 'cpp'],
        path: expand('$SWIFTLY_BIN_DIR/clangd'),
        args: ['-z', '--languageserver', '--encoding', 'utf-8'],
    },
    {
        name: 'rust-analyzer',
        filetype: ['rust'],
        path: 'rust-analyzer',
        args: [],
        syncInit: v:true,
    },
    {
        name: 'sourcekit-lsp',
        filetype: ['swift'],
        path: expand('$SWIFTLY_BIN_DIR/sourcekit-lsp'),
        args: [],
    },
]

autocmd VimEnter * call LspAddServer(lspServers)
