vim9script

## テーマ
syntax enable
packadd! solarized

set background=dark
colorscheme solarized
g:airline_theme = 'solarized'

highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight SpecialKey ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE
highlight lspReference ctermfg=red guifg=red ctermbg=green guibg=green

## Always display the statusline in all windows
set laststatus=2

## Always display the tabline, even if there is only one tab
set showtabline=2

## Hide the default mode text (e.g. -- INSERT -- below the statusline)
set noshowmode

## 行番号を表示する
set number
set numberwidth=5

## 閉括弧が入力された時、対応する括弧を強調する
set showmatch

## vim-airline
packadd! vim-airline-themes

# g:airline_skip_empty_sections = 1
# g:bufferline_echo = 0

g:airline#extensions#tabline#enabled = 1
g:airline#extensions#tabline#keymap_ignored_filetypes = ['vimfiler', 'nerdtree']
g:airline#extensions#tabline#buffer_idx_mode = 1
g:airline#extensions#tabline#buffer_idx_format = {
    0: '0 ',
    1: '1 ',
    2: '2 ',
    3: '3 ',
    4: '4 ',
    5: '5 ',
    6: '6 ',
    7: '7 ',
    8: '8 ',
    9: '9 ',
}

g:airline#extensions#tabline#formatter = 'unique_tail_improved'
g:airline#extensions#tabline#show_tab_type = 0

g:airline#extensions#whitespace#mixed_indent_algo = 1

g:airline#extensions#clock#auto = 1
g:airline#extensions#clock#updatetime = 100
g:airline#extensions#clock#format = '%H:%M:%S'

g:airline_powerline_fonts = 1
if !exists('airline_symbols')
    g:airline_symbols = {}
endif

g:airline_symbols.crypt = ' crypt'
g:airline_symbols.paste = 'ρ'
g:airline_symbols.spell = 'Ꞩ'
g:airline_symbols.notexists = '∄'
g:airline_symbols.whitespace = 'Ξ'

g:airline_left_sep = "󾂰"
g:airline_left_alt_sep = "󾂱"
g:airline_right_sep = "󾂴"
g:airline_right_alt_sep = "󾂵"
