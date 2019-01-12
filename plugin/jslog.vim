" console.log({ $variable })
inoremap cll console.log({ })<Esc>==F{a<space>
noremap cll yiwocll<Esc>p

" console.info({ $variable })
inoremap cli console.info({ })<Esc>==F{a<space>
noremap cli yiwocli<Esc>p

" console.warning({ $variable })
inoremap clw console.warning({ })<Esc>==F{a<space>
noremap clw yiwoclw<Esc>p

" console.error({ $variable })
inoremap cle console.error({ })<Esc>==F{a<space>
noremap cle yiwocle<Esc>p
