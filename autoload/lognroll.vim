function! lognroll#BuildInsertMappings(console, logType)
  if get(g:, 'lognroll#enable_brackets', '1')
    return a:console . "." . a:logType . "({ })\<C-[>F{\a\<space>"
  else
    return a:console . "." . a:logType . "( )\<C-[>F(\a\<space>"
  endif
endfunction

function! lognroll#BuildNormalMappings(console, logType)
  if get(g:, 'lognroll#enable_brackets', '1')
    execute "normal! yiwo" . a:console . "." . a:logType . "({ })\<C-[>F{a\<space>\<C-[>p<CR>"
  else
    execute "normal! yiwo" . a:console . "." . a:logType . "( )\<C-[>F(a\<space>\<C-[>p<CR>"
  endif
endfunction

function! lognroll#BuildNormalMappingsArgs(console, logType)
  if get(g:, 'lognroll#enable_brackets', '1')
    execute "normal! yi(o" . a:console . "." . a:logType . "({ })\<C-[>F{a\<space>\<C-[>p<CR>"
  else
    execute "normal! yi(o" . a:console . "." . a:logType . "( )\<C-[>F(a\<space>\<C-[>p<CR>"
  endif
endfunction
