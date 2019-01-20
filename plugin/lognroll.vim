" Vim filetype plugin
" Language:		JavaScript
" Maintainer:		Gabriele Lippi
" Last Change:		2019 January 19

" Sanity Checks
if exists('g:loaded_lognroll_vim')
    finish
endif

" Set a special flag used only by this plugin for preventing doubly
" loading the script.
let g:loaded_lognroll_vim = 1

" set the 'cpoptions' option to its Vim default value and restore it at the
" end
let s:save_cpo = &cpo
set cpo&vim

" Define wether the mappings should be active for INSERT MODE or not
let g:lognroll#enable_insert_mode =
\ get(g:, 'lognroll#enable_insert_mode', 1)

"Define wether the variable should be logged inside curly brackets or not
let g:lognroll#enable_brackets =
\ get(g:, 'lognroll#enable_brackets', 1)

let &cpo = s:save_cpo
