echo "<<<<<< Clone amix/vimrc"
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
# mkdir ~/.vim_runtime/sources_plugins
# git clone https://github.com/lervag/vimtex.git ~/.vim_runtime/sources_plugins/vimtex
# echo "" > ~/.vim_runtime/my_configs.vim
echo "<<<<<< Install vimrc"
sh ~/.vim_runtime/install_awesome_vimrc.sh
echo "
set number
set shiftwidth=2
set tabstop=2
set tw=69
map <leader>tt :tabnext<cr>" >> ~/.vimrc

# sudo apt-get install exuberant-ctags

echo "<<<<<< END"
