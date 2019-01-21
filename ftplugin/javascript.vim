let g:lognroll_js_console =
\ get(g:, 'lognroll_js_console', 'console')

let g:lognroll_js_actions =
\ get(g:, 'lognroll_js_actions',  [ 'log',  'info',  'warn',  'error' ])

for action in g:lognroll_js_actions
    let s:firsLetter = action[0]
    let s:mapping = "co" . s:firsLetter
    let s:mappingAllArgs = "co" . s:firsLetter . "a"
    let s:plugCommand = "<Plug>(lnr_normal_" . action . ")"
    let s:plugCommandAllArgs = "<Plug>(lnr_normal_" . action . "args)"

    " " " " " " " "
    " INSERT MODE "
    " " " " " " " "
    if get (g:,'lognroll#enable_insert_mode', 1)
        let s:plugCommand = "<Plug>(lnr_insert_" . action . ")"

        " <Plug> mappings
        execute "inoremap <silent> <expr> " . s:plugCommand . " lognroll#BuildInsertMappings(". "'" . g:lognroll_js_console . "'" . ',' . "'" .  action . "'" . ")"
        " default mappings
        if !hasmapto(s:mapping) && (mapcheck(s:mapping, "i") == "")
          execute "imap <unique> " . s:mapping . " " . s:plugCommand
        endif

    endif

    " " " " " " " "
    " NORMAL MODE "
    " " " " " " " "
    " <Plug> mappings
    execute "nnoremap <silent> " . s:plugCommand . " :<C-U>call lognroll#BuildNormalMappings(". "'" . g:lognroll_js_console . "'" . ',' . "'" .  action . "'" . ")<CR>"
    " default mappings
    if !hasmapto(s:mapping) && (mapcheck(s:mapping,'n') == '')
      execute "nmap <unique> " . s:mapping . " " . s:plugCommand
    endif

    " <Plug> mappings
    execute "nnoremap <silent> " . s:plugCommandAllArgs . " :<C-U>call lognroll#BuildNormalMappingsArgs(". "'" . g:lognroll_js_console . "'" . ',' . "'" .  action . "'" . ")<CR>"
    " default mappings
    if !hasmapto(s:mappingAllArgs) && (mapcheck(s:mappingAllArgs, "n") == "")
      execute "nmap <unique> " . s:mappingAllArgs . " " . s:plugCommandAllArgs
    endif
endfor
