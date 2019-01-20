let g:lognroll_js_console =
\ get(g:, 'lognroll_js_console', 'console')

let g:lognroll_js_actions =
\ get(g:, 'lognroll_js_actions',  [ 'log',  'info',  'warn',  'error' ])

" " " " " " " "
" INSERT MODE "
" " " " " " " "
if get (g:,'lognroll#enable_insert_mode', 1)

  for action in g:lognroll_js_actions
    let s:firsLetter = action[0]
    let s:plugCommand = "<Plug>(lnr_insert_" . action . ")"
    let s:mapping = "co" . s:firsLetter

    " <Plug> mappings
    execute "inoremap <silent> <expr> " . s:plugCommand . " lognroll#BuildInsertMappings(". "'" . g:lognroll_js_console . "'" . ',' . "'" .  action . "'" . ")"
    " default mappings
    if !hasmapto(s:mapping)
      execute "imap " . s:mapping . " " . s:plugCommand
    endif
  endfor

endif


" " " " " " " "
" NORMAL MODE "
" " " " " " " "
  for action in g:lognroll_js_actions
    let s:firsLetter = action[0]
    let s:plugCommand = "<Plug>(lnr_normal_" . action . ")"
    let s:mapping = "co" . s:firsLetter

    " <Plug> mappings
    execute "nnoremap <silent> " . s:plugCommand . " :<C-U>call lognroll#BuildNormalMappings(". "'" . g:lognroll_js_console . "'" . ',' . "'" .  action . "'" . ")<CR>"
    " default mappings
    if !hasmapto(s:mapping)
      execute "nmap " . s:mapping . " " . s:plugCommand
    endif
  endfor

  "log all arguments of a function
  for action in g:lognroll_js_actions
    let s:firsLetter = action[0]
    let s:plugCommand = "<Plug>(lnr_normal_" . action . "args)"
    let s:mapping = "co" . s:firsLetter . "a"

    " <Plug> mappings
    execute "nnoremap <silent> " . s:plugCommand . " :<C-U>call lognroll#BuildNormalMappingsArgs(". "'" . g:lognroll_js_console . "'" . ',' . "'" .  action . "'" . ")<CR>"
    " default mappings
    if !hasmapto(s:mapping)
      execute "nmap " . s:mapping . " " . s:plugCommand
    endif
  endfor
