nn <buffer> <F5> :!gdb -q ./%< <CR>
nn <buffer> <F6> :!./%< <CR>
nn <buffer> <F7> :up \| !as -g -o %<.o % && ld -o %< %<.o <CR>
