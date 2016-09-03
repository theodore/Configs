runtime! ftplugin/c.vim ftplugin/c_*.vim ftplugin/c/*.vim
"unlet CFLAGS
"let CXXFLAGS = CCXXFLAGS . " -ansi"


nn <buffer> <F7>   :up \| exe "!g++" CFLAGS "   -o %< %"        ColorFilter <CR>
nn <buffer> <C-F7> :up \| exe "!g++" CFLAGS "-c -o /dev/null %" ColorFilter <CR>
nn <buffer> <F9> <F7>
