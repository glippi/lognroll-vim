" Sanity Checks
if exists('g:loaded_lognroll_vim')
    finish
endif

" Set a special flag used only by this plugin for preventing doubly
" loading the script.
let g:loaded_lognroll_vim = 1

let g:lognroll_vim#enable_insert_mode =
\ get(g:, 'lognroll_vim#enable_insert_mode', 0)

" console.log({ $variable })
if get (g:,'lognroll_vim#enable_insert_mode', 1)
  imap cll console.log({ })<Esc>==F{a<space>
endif
nnoremap <silent> <Plug>lognroll#log yiwoconsole.log({ })<Esc>==F{a<space><Esc>p
nmap cll <Plug>lognroll#log

" console.info({ $variable })
if get (g:,'lognroll_vim#enable_insert_mode', 1)
  imap cli console.info({ })<Esc>==F{a<space>
endif
nnoremap <silent> <Plug>lognroll#info yiwoconsole.info({ })<Esc>==F{a<space><Esc>p
nmap cli <Plug>lognroll#info

" console.warn({ $variable })
if get (g:,'lognroll_vim#enable_insert_mode', 1)
  imap clw console.warn({ })<Esc>==F{a<space>
endif
nnoremap <silent> <Plug>lognroll#warn yiwoconsole.warn({ })<Esc>==F{a<space><Esc>p
nmap clw <Plug>lognroll#warn

" console.error({ $variable })
if get (g:,'lognroll_vim#enable_insert_mode', 1)
  imap cle console.error({ })<Esc>==F{a<space>
endif
nnoremap <silent> <Plug>lognroll#error yiwoconsole.error({ })<Esc>==F{a<space><Esc>p
nmap cle <Plug>lognroll#error
