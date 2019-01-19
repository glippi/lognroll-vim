function! lognroll#BuildInsertMappings(logType)
  if get(g:, 'lognroll_vim#enable_brackets', '1')
    return "console." . a:logType . "({ })\<C-[>F{\a\<space>"
  else
    return "console." . a:logType . "( )\<C-[>F(\a\<space>"
  endif
endfunction

function! lognroll#BuildNormalMappings(logType)
  if get(g:, 'lognroll_vim#enable_brackets', '1')
    execute "normal! yiwoconsole." . a:logType . "({ })\<C-[>F{a\<space>\<C-[>p<CR>"
  else
    execute "normal! yiwoconsole." . a:logType . "( )\<C-[>F(a\<space>\<C-[>p<CR>"
  endif
endfunction

function! lognroll#BuildNormalMappingsArgs(logType)
  if get(g:, 'lognroll_vim#enable_brackets', '1')
    execute "normal! yi(oconsole." . a:logType . "({ })\<C-[>F{a\<space>\<C-[>p<CR>"
  else
    execute "normal! yi(oconsole." . a:logType . "( )\<C-[>F(a\<space>\<C-[>p<CR>"
  endif
endfunction
