set ts=2
set et
set sts=2
set sw=2

" enable line numbers
set number

colors koehler


" status line mods
set laststatus=2 
if has("statusline") 
 set statusline=%<%f\ %h%m%r%=%k[%{(&fenc\ ==\\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %-12.(%l,%c%V%)\ %P 
endif 


