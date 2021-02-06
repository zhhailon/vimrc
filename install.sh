git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
echo "set number
set shiftwidth=2
set tabstop=2
set tw=79
let g:snipMate = { 'snippet_version' : 1 }" >> ~/.vim_runtime/my_configs.vim

git clone https://github.com/majutsushi/tagbar.git ~/.vim_runtime/my_plugins/tagbar
echo "nmap <F8> :TagbarToggle<CR>" >> ~/.vim_runtime/my_configs.vim

git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim_runtime/my_plugins/YouCompleteMe
cd ~/.vim_runtime/my_plugins/YouCompleteMe
git submodule update --init --recursive
#./install.py --clangd-completer --rust-completer --java-completer
./install.py --all
echo "let g:ycm_global_ycm_extra_conf = '~/.vim_runtime/my_plugins/YouCompleteMe/.ycm_extra_conf.py'" >> ~/.vim_runtime/my_configs.vim
