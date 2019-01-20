let g:lognroll_console = 'console'
let g:lognroll_actions = [ 'log',  'info',  'warn',  'error' ]

" " " " " " " "
" INSERT MODE "
" " " " " " " "

if get (g:,'lognroll_vim#enable_insert_mode', 1)

  for action in g:lognroll_actions
    let s:firsLetter = action[0]
    let s:plugCommand = "<Plug>(lnr_insert_" . action . ")"
    let s:mapping = "co" . s:firsLetter

    " <Plug> mappings
    execute "inoremap <silent> <expr> " . s:plugCommand . " lognroll#BuildInsertMappings('" . action . "')"
    " default mappings
    if !hasmapto('<Plug>(lnr_insert_log)')
      execute "imap " . s:mapping . " " . s:plugCommand
    endif
  endfor

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

nnoremap <silent> <Plug>(lnr_normal_logargs)
  \ :<C-U>call lognroll#BuildNormalMappingsArgs("log")<CR>

nnoremap <silent> <Plug>(lnr_normal_infoargs)
  \ :<C-U>call lognroll#BuildNormalMappingsArgs("info")<CR>

nnoremap <silent> <Plug>(lnr_normal_warnargs)
  \ :<C-U>call lognroll#BuildNormalMappingsArgs("warn")<CR>

nnoremap <silent> <Plug>(lnr_normal_errorargs)
  \ :<C-U>call lognroll#BuildNormalMappingsArgs("error")<CR>

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

if !hasmapto('<Plug>(lnr_normal_logargs')
  nmap cola <Plug>(lnr_normal_logargs)
endif
if !hasmapto('<Plug>(lnr_normal_infoargs')
  nmap coia <Plug>(lnr_normal_infoargs)
endif
if !hasmapto('<Plug>(lnr_normal_warnargs')
  nmap cowa <Plug>(lnr_normal_warnargs)
endif
if !hasmapto('<Plug>(lnr_normal_errorargs')
  nmap cowe <Plug>(lnr_normal_errorargs)
endif
