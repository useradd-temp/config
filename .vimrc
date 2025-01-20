:set number
syntax enable
call plug#begin('~/.vim/plugged')
    Plug 'jacoborus/tender.vim'
    Plug 'mechatroner/rainbow_csv'
call plug#end()
colo tender

highlight Normal guibg=NONE ctermbg=NONE
highlight NonText guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE
highlight Folded guibg=NONE ctermbg=NONE
highlight EndOfBuffer guibg=NONE ctermbg=NONE
