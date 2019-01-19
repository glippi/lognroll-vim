function! lognroll#BuildLognrollNormalMappings(logType)
  if get(g:, 'lognroll_vim#enable_brackets', '1')
    execute "normal! yiwoconsole." . a:logType . "({ })\<C-[>F{a\<space>\<C-[>p<CR>"
  else
    execute "normal! yiwoconsole." . a:logType . "( )\<C-[>F(a\<space>\<C-[>p<CR>"
  endif
endfunction


function! lognroll#BuildLognrollInsertMappings(logType)
  if get(g:, 'lognroll_vim#enable_brackets', '1')
    return "console." . a:logType . "({ })\<C-[>F{\a\<space>"
  else
    return "console." . a:logType . "( )<C-[>F(a\<space>"
  endif
endfunction
