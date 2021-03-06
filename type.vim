" 针对不同文件设置不同tab宽度
function SetTabWidth(n)
    let n = a:n
    let template =
        \"
        \set tabstop=%s\n
        \set shiftwidth=%s\n
        \set softtabstop=%s\n
        \"
    exec printf(template, n, n, n)
endfunction

"au BufEnter * :call utils.RefreshFileType(&filetype)
"au FileType * :call SetTabWidth(4)
call SetTabWidth(4)
au FileType * :set bufhidden=hide

" ruby on rails
au FileType ruby,eruby,coffee,yaml,yml :call SetTabWidth(2)

" html or js
au FileType javascript,html :call SetTabWidth(2)
