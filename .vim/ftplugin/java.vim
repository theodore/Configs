"nn <buffer> <F5> :!gdb -q ./%< <CR>
nn <buffer> <F6> :!java -cp bin %< <CR>
"nn <buffer> <C-K> :JavaImpSilent <CR>
"nn <buffer> K :JID <CR>



" java
comp javac
"nn <buffer> <F7> :up \| mak -source 6 -target 6 -d bin % <CR>
nn <buffer> <F7> :up \| mak -d bin % <CR>

" android
"comp ant
"nn <buffer> <F7> :up \| mak clean debug <CR>
"nn <buffer> <F8> :up \| mak clean debug install <CR>
"nn <buffer> <F9> :up \| mak debug install <CR>
