echom "Autoloading..."
function! lognroll#BuildLognrollMappings(logLevel, mode)
  if get(g:, 'lognroll_vim#enable_brackets', '1')
    echom a:logLevel
    if a:mode == "insert"
      echom a:mode
      execute "normal! iconsole." . a:logLevel . "({ })\<C-[>F{a\<space>"
    else
      execute "normal! yiwoconsole." . a:logLevel . "({ })\<C-[>F{a\<space>\<C-[>p<CR>"
    endif
  else
    if a:mode == "insert"
      "console." . a:logLevel . "( )<C-[>F(a<space>"
    else
      "yiwoconsole." .a:logLevel . "( )<C-[>F(a<space><C-[>p"
    endif
  endif
endfunction
