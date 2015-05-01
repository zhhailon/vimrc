sudo apt-get install exuberant-ctags
#echo "<<<<<< Install Monaco font"
#curl -kL https://raw.github.com/cstrap/monaco-font/master/install-font-ubuntu.sh | bash
echo "<<<<<< Clone amix/vimrc"
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
# cd ~/.vim_runtime
# echo "<<<<<< Clone molokai theme"
# mkdir sources_plugins
# cd sources_plugins
# git clone https://github.com/tomasr/molokai.git
# echo "<<<<<< Set Monaco and molokai"
echo "set number
set gfn=Fantasque\ Sans\ Mono\ 12
map <leader>tt :tabnext<cr>" > ~/.vim_runtime/my_configs.vim
echo "<<<<<< Install vimrc"
sh ~/.vim_runtime/install_awesome_vimrc.sh
echo "
set shiftwidth=2
set tabstop=2
if ! has(\"gui_running\")
  set t_Co=256
endif
\" feel free to choose :set background=light for a different style
set background=dark
colors peaksea" >> ~/.vimrc
