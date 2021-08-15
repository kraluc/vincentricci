syntax enable
set hlsearch
set incsearch
set tabstop=4                   " The width of a TAB is set to 4.
                                " Still it is a \t. It is just that
                                " Vim will interpret it to be having
                                " a width of 4.

set shiftwidth=4                " Indents will have a width of 4

set softtabstop=4               " Sets the number of columns for a TAB

set expandtab                   " Expand TABs to spaces
set number relativenumber       " hybrid number mode
set cursorline
set backspace=indent,eol,start  " 'fix' backspace in insert mode

augroup numbertoggle            " https://jeffkreeftmeijer.com/vim-number/
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
