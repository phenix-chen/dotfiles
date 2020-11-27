set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
" source ~/.vimrc
source ~/.local/etc/nvim/basic.vim
source ~/.local/etc/nvim/plugins.vim


" ===
" === Dress up
" ===
set termguicolors " enable true colors support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" color deus
