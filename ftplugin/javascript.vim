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
    execute "inoremap <silent> <expr> " . s:plugCommand . " lognroll#BuildInsertMappings(". "'" . g:lognroll_console . "'" . ',' . "'" .  action . "'" . ")"
    " default mappings
    if !hasmapto(s:mapping)
      execute "imap " . s:mapping . " " . s:plugCommand
    endif
  endfor

endif


" " " " " " " "
" NORMAL MODE "
" " " " " " " "

  for action in g:lognroll_actions
    let s:firsLetter = action[0]
    let s:plugCommand = "<Plug>(lnr_normal_" . action . ")"
    let s:mapping = "co" . s:firsLetter

    " <Plug> mappings
    execute "nnoremap <silent> " . s:plugCommand . " :<C-U>call lognroll#BuildNormalMappings(". "'" . g:lognroll_console . "'" . ',' . "'" .  action . "'" . ")<CR>"
    " default mappings
    if !hasmapto(s:mapping)
      execute "nmap " . s:mapping . " " . s:plugCommand
    endif
  endfor

"if !hasmapto('<Plug>(lnr_normal_logargs')
"  nmap cola <Plug>(lnr_normal_logargs)
"endif
"if !hasmapto('<Plug>(lnr_normal_infoargs')
"  nmap coia <Plug>(lnr_normal_infoargs)
"endif
"if !hasmapto('<Plug>(lnr_normal_warnargs')
"  nmap cowa <Plug>(lnr_normal_warnargs)
"endif
"if !hasmapto('<Plug>(lnr_normal_errorargs')
"  nmap cowe <Plug>(lnr_normal_errorargs)
"endif
