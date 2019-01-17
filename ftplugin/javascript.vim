let g:lognroll_vim#enable_insert_mode =
\ get(g:, 'lognroll_vim#enable_insert_mode', 0)

" console.log({ $variable })
if get ('g:lognroll_vim#enable_insert_mode', 1)
  imap cll console.log({ })<Esc>==F{a<space>
endif
nmap cll yiwocll<Esc>p

" console.info({ $variable })
if get ('g:lognroll_vim#enable_insert_mode', 1)
  imap cli console.info({ })<Esc>==F{a<space>
endif
nmap cli yiwocli<Esc>p

" console.warn({ $variable })
if get ('g:lognroll_vim#enable_insert_mode', 1)
  imap clw console.warn({ })<Esc>==F{a<space>
endif
nmap clw yiwoclw<Esc>p

" console.error({ $variable })
if get ('g:lognroll_vim#enable_insert_mode', 1)
  imap cle console.error({ })<Esc>==F{a<space>
endif
nmap cle yiwocle<Esc>p
