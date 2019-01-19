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

let g:lognroll_vim#enable_insert_mode =
\ get(g:, 'lognroll_vim#enable_insert_mode', 0)

if get (g:,'lognroll_vim#enable_insert_mode', 1)
  inoremap <silent> <Plug>lognroll#insert#log console.log({ })<Esc>F{a<space>
  inoremap <silent> <Plug>lognroll#insert#info console.info({ })<Esc>F{a<space>
  inoremap <silent> <Plug>lognroll#insert#warning console.warn({ })<Esc>F{a<space>
  inoremap <silent> <Plug>lognroll#insert#error console.error({ })<Esc>F{a<space>

" default mappings
if !hasmapto('<Plug>lognroll#insert#log')
  imap cll <Plug>lognroll#insert#log
endif
if !hasmapto('<Plug>lognroll#insert#info')
  imap cli <Plug>lognroll#insert#info
endif
if !hasmapto('<Plug>lognroll#insert#warn')
  imap clw <Plug>lognroll#insert#warn
endif
if !hasmapto('<Plug>lognroll#insert#error')
  imap cle <Plug>lognroll#insert#error
endif
endif

" <Plug> mappings for NORMAL MODE commands
nnoremap <silent> <Plug>lognroll#normal#log yiwoconsole.log({ })<Esc>F{a<space><Esc>p
nnoremap <silent> <Plug>lognroll#normal#info yiwoconsole.info({ })<Esc>F{a<space><Esc>p
nnoremap <silent> <Plug>lognroll#normal#warn yiwoconsole.warn({ })<Esc>F{a<space><Esc>p
nnoremap <silent> <Plug>lognroll#normal#error yiwoconsole.error({ })<Esc>F{a<space><Esc>p


" default mappings
if !hasmapto('<Plug>lognroll#normal#log')
  nmap cll <Plug>lognroll#normal#log
endif
if !hasmapto('<Plug>lognroll#normal#info')
  nmap cli <Plug>lognroll#normal#info
endif
if !hasmapto('<Plug>lognroll#normal#warn')
  nmap clw <Plug>lognroll#normal#warn
endif
if !hasmapto('<Plug>lognroll#normal#error')
  nmap cle <Plug>lognroll#normal#error
endif

let &cpo = s:save_cpo
