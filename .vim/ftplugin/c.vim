" My favor is a little different than the default.
setl cino=:0,g0,l1,t0,+4
setl sw=8 sts=8 noet

" highlight for doxygen syntax
let b:load_doxygen_syntax=1
syn on

let ColorFilter = "|& sed -r \"s/error:/`printf '\e[1;33merror\e[0m:'`/\""
               \." | sed -r \"s/warning:/`printf '\e[1;36mwarning\e[0m:'`/\""
               \." | sed -r \"s/note:/`printf '\e[1;34mnote\e[0m:'`/\""
               \." | sed -r \"s/undefined reference to/`printf '\e[1;32mundefined reference \e[35mto\e[0m'`/\"" |
let CFLAGS  = "-g -Wall -Wextra -Wconversion -Wfloat-equal -Wlogical-op -Wno-long-long"
            \." -Wredundant-decls -Wshadow -Wundef -Wwrite-strings -pedantic -pipe -DLOCAL" |
let CONLYFLAGS = " -Wstrict-prototypes -Wold-style-definition -std=c99"
let CONLYFLAGS = CONLYFLAGS . " -lpthread"


nn <buffer> <F5> :!gdb -q ./%< <CR>
nn <buffer> <F6> :!./%< <CR>
nn <buffer> <F7>   :up \| exe "!gcc" CFLAGS . CONLYFLAGS "   -o %< %"        ColorFilter <CR>
nn <buffer> <C-F7> :up \| exe "!gcc" CFLAGS . CONLYFLAGS "-c -o /dev/null %" ColorFilter <CR>
