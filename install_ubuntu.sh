echo "<<<<<< Clone amix/vimrc"
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
# mkdir ~/.vim_runtime/sources_plugins
# git clone https://github.com/lervag/vimtex.git ~/.vim_runtime/sources_plugins/vimtex
# echo "" > ~/.vim_runtime/my_configs.vim
echo "<<<<<< Install vimrc"
sh ~/.vim_runtime/install_awesome_vimrc.sh
echo "set number
set shiftwidth=2
set tabstop=2
set tw=69" >> ~/.vimrc

# sudo apt-get install exuberant-ctags

echo "<<<<<< Install TagBar"
git clone https://github.com/majutsushi/tagbar.git ~/.vim_runtime/sources_non_forked/tagbar
echo "nmap <F8> :TagbarToggle<CR>" >> ~/.vim_runtime/my_configs.vim

echo "<<<<<< Install YouCompleteMe"
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim_runtime/sources_non_forked/YouCompleteMe
cd ~/.vim_runtime/sources_non_forked/YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer
echo "let g:ycm_global_ycm_extra_conf = '~/.vim_runtime/sources_non_forked/YouCompleteMe/third_party/ycmd/cpp/.ycm_extra_conf.py'" >> ~/.vim_runtime/my_configs.vim

echo "<<<<<< END"
