" " " " " " " "
" INSERT MODE "
" " " " " " " "

if get (g:,'lognroll_vim#enable_insert_mode', 1)
" <Plug> mappings
  inoremap <silent> <Plug>(lnr_insert_log)
    \ :<C-U>call lognroll#BuildLognrollMappings("log", "insert")<CR>
  inoremap <silent> <Plug>(lnr_insert_info)
    \ :<C-U>call lognroll#BuildLognrollMappings("info", "insert")<CR>
  inoremap <silent> <Plug>(lnr_insert_warn)
    \ :<C-U>call lognroll#BuildLognrollMappings("warn", "insert")<CR>
  inoremap <silent> <Plug>(lnr_insert_error)
    \ :<C-U>call lognroll#BuildLognrollMappings("error", "insert")<CR>

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
  \ :<C-U>call lognroll#BuildLognrollMappings("log", "normal")<CR>
nnoremap <silent> <Plug>(lnr_normal_info)
  \ :<C-U>call lognroll#BuildLognrollMappings("info", "normal")<CR>
nnoremap <silent> <Plug>(lnr_normal_warn)
  \ :<C-U>call lognroll#BuildLognrollMappings("warn", "normal")<CR>
nnoremap <silent> <Plug>(lnr_normal_error)
  \ :<C-U>call lognroll#BuildLognrollMappings("error", "normal")<CR>

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