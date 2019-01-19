" " " " " " " "
" INSERT MODE "
" " " " " " " "

if get (g:,'lognroll_vim#enable_insert_mode', 1)
" <Plug> mappings
  inoremap <silent> <Plug>(lnr_insert_log) :call BuildLognrollMappings("log", "insert")<Return>
  inoremap <silent> <Plug>(lnr_insert_info) :call BuildLognrollMappings("info", "insert")<Return>
  inoremap <silent> <Plug>(lnr_insert_warn) :call BuildLognrollMappings("warn", "insert")<Return>
  inoremap <silent> <Plug>(lnr_insert_error) :call BuildLognrollMappings("error", "insert")<Return>

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
nnoremap <silent> <Plug>(lnr_normal_log) :call BuildLognrollMappings("log", "normal")<Return>
nnoremap <silent> <Plug>(lnr_normal_info) :call BuildLognrollMappings("info", "normal")<Return>
nnoremap <silent> <Plug>(lnr_normal_warn) :call BuildLognrollMappings("warn", "normal")<Return>
nnoremap <silent> <Plug>(lnr_normal_error) :call BuildLognrollMappings("error", "normal")<Return>

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
