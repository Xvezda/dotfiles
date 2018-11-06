" Copyright (c) 2018 Xvezda <https://xvezda.com>
" Copy from remote server via ssh


let s:tname = tempname()

function! s:PasteToRemote() range
    " Backup register code from
    " https://github.com/greymd/oscyank.vim

    " Backup register.
    let tmp = @@
    " Yank current selected line.
    silent normal gvy
    " Put current register's content to 'text'
    let text = @@
    " Restore original register.
    let @@ = tmp

    new
        setlocal buftype=nofile bufhidden=hide
                    \ encoding=utf-8 fileencoding=utf-8 noswapfile nobuflisted
        0put=text
        execute 'w ' . s:tname
        let cmdexe = 'cat ' . s:tname . ' | base64 | nc localhost 1337'
        call system(cmdexe)
        let cmdexe = 'rm ' . s:tname
        call system(cmdexe)
    q
endfunction

vmap <Leader>y :call <SID>PasteToRemote()<CR>


" vim:ft=vim
