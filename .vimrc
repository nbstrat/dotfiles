set ts=4      " The width of a TAB is set to 4.
set et        " Expand TABs to spaces.
set sts=4     " Sets the number of columns for a TAB
set sw=4      " Indents will have a width of 4. 

" enable line numbers
set number

colors koehler


" status line mods
set laststatus=2 
if has("statusline") 
 set statusline=%<%f\ %h%m%r%=%k[%{(&fenc\ ==\\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %-12.(%l,%c%V%)\ %P 
endif 


