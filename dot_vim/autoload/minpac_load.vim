vim9script

## minpac (package manager)¬
export def Init()
  packadd minpac

  if !exists('g:loaded_minpac')
    throw ''
  endif

  minpac#init({
      progress_open: 'none',
      status_auto: v:true,
  })
  minpac#add('k-takata/minpac', { type: 'opt' })

  ## Additional plugins here.
  minpac#add('altercation/vim-colors-solarized', {
      type: 'opt',
      name: 'solarized',
  })

  # minpac#add('vim-jp/vital.vim')

  minpac#add('wakatime/vim-wakatime')

  # minpac#add('mopp/autodirmake.vim')
  minpac#add('kphrx/autodirmake.vim')

  minpac#add('airblade/vim-gitgutter')
  # minpac#add('tpope/vim-fugitive')

  minpac#add('vim-airline/vim-airline')
  minpac#add('enricobacis/vim-airline-clock')
  minpac#add('vim-airline/vim-airline-themes', { type: 'opt' })

  # minpac#add('prabirshrestha/asyncomplete.vim')
  # minpac#add('prabirshrestha/vim-lsp')
  # minpac#add('prabirshrestha/asyncomplete-lsp.vim')
  minpac#add('girishji/vimcomplete', { name: 'autocomplete.vim' })
  minpac#add('yegappan/lsp')
  minpac#add('mattn/vim-lsp-settings')
  # minpac#add('kphrx/vim-lsp-settings', { branch: 'add-biomejs' })
  minpac#add('normen/vim-lsp-settings-adapter')

  # minpac#add('dense-analysis/ale')
  # minpac#add('rhysd/vim-lsp-ale')

  minpac#add('tpope/vim-commentary')

  minpac#add('cohama/lexima.vim')

  minpac#add('qnighy/lalrpop.vim')

  # minpac#add('stephenway/postcss.vim')

  # minpac#add('keith/swift.vim')

  # minpac#add('posva/vim-vue')

  # minpac#add('wuelnerdotexe/vim-astro')

  # minpac#add('chrisbra/csv.vim')

  minpac#add('elixir-editors/vim-elixir', { type: 'opt' })

  # minpac#add('udalov/kotlin-vim', { type: 'opt' })

  # minpac#add('ziglang/zig.vim')

  # minpac#add('darfink/vim-plist')
enddef
