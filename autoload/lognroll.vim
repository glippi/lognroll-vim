echom "Autoloading..."
function! lognroll#BuildLognrollMappings(logLevel, mode)
  if get(g:, 'lognroll_vim#enable_brackets', '1')
    echom a:logLevel
    if a:mode == "insert"
      "console." . a:logLevel . "({ })<C-[>F{a<space>"
    else
      "yiwoconsole." .a:logLevel . "({ })<C-[>F{a<space><C-[>p"
    endif
  else
    if a:mode == "insert"
      "console." . a:logLevel . "( )<C-[>F(a<space>"
    else
      "yiwoconsole." .a:logLevel . "( )<C-[>F(a<space><C-[>p"
    endif
  endif
endfunction
