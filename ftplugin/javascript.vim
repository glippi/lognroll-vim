" " " " " " " "
" INSERT MODE "
" " " " " " " "

if get (g:,'lognroll_vim#enable_insert_mode', 1)
" <Plug> mappings
  inoremap <silent> <expr> <Plug>(lnr_insert_log)  lognroll#BuildInsertMappings("log")
  inoremap <silent> <expr> <Plug>(lnr_insert_info)  lognroll#BuildINsertMappings("info")
  inoremap <silent> <expr> <Plug>(lnr_insert_warn)  lognroll#BuildInsertMappings("warn")
  inoremap <silent> <expr> <Plug>(lnr_insert_error) lognroll#BuildInsertMappings("error")

  " default mappings
  if !hasmapto('<Plug>(lnr_insert_log)')
    imap col <Plug>(lnr_insert_log)
  endif
  if !hasmapto('<Plug>(lnr_insert_info)')
    imap coi <Plug>(lnr_insert_info)
  endif
  if !hasmapto('<Plug>(lnr_insert_warn)')
    imap cow <Plug>(lnr_insert_warn)
  endif
  if !hasmapto('<Plug>(lnr_insert_error)')
    imap coe <Plug>(lnr_insert_error)
  endif
endif


" " " " " " " "
" NORMAL MODE "
" " " " " " " "

" <Plug> mappings
nnoremap <silent> <Plug>(lnr_normal_log)
  \ :<C-U>call lognroll#BuildNormalMappings("log")<CR>

nnoremap <silent> <Plug>(lnr_normal_info)
  \ :<C-U>call lognroll#BuildNormalMappings("info")<CR>

nnoremap <silent> <Plug>(lnr_normal_warn)
  \ :<C-U>call lognroll#BuildNormalMappings("warn")<CR>

nnoremap <silent> <Plug>(lnr_normal_error)
  \ :<C-U>call lognroll#BuildNormalMappings("error")<CR>

" default mappings
if !hasmapto('<Plug>(lnr_normal_log)')
  nmap col <Plug>(lnr_normal_log)
endif
if !hasmapto('<Plug>(lnr_normal_info)')
  nmap coi <Plug>(lnr_normal_info)
endif
if !hasmapto('<Plug>(lnr_normal_warn)')
  nmap cow <Plug>(lnr_normal_warn)
endif
if !hasmapto('<Plug>(lnr_normal_error)')
  nmap coe <Plug>(lnr_normal_error)
endif
