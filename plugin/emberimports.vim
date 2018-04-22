" Vim plugin for managing Ember.js import statements
" Maintainer: Devin Weaver <suki@tritarget.org>
" Last Change: 2018 Apr 22

" Exit quickly when:
" - this plugin was already loaded
" - when 'compatible' is set
if exists("loaded_vim_ember_imports") || &cp
  finish
endif
let loaded_vim_ember_imports = 1

if !exists('g:vim_ember_imports_use_semicolons')
  let g:vim_ember_imports_use_semicolons = 1
endif
if !exists('g:vim_ember_imports_multiline_max_vars')
  let g:vim_ember_imports_multiline_max_vars = 3
endif
if !exists('g:vim_ember_imports_multiline_max_col')
  let g:vim_ember_imports_multiline_max_col = 80
endif
if !exists('g:vim_ember_imports_map')
  let g:vim_ember_imports_map = '<Leader>e'
endif

if !empty(g:vim_ember_imports_map)
  execute "nnoremap " . g:vim_ember_imports_map . " :call emberimports#run()<Cr>"
endif

command -nargs=* -complete=customlist,emberimports#complete Emimport call emberimports#run(<f-args>)

" vim:sw=2 ts=2 et fdm=marker
