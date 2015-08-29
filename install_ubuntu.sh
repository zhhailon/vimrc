echo "<<<<<< Clone amix/vimrc"
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
mkdir ~/.vim_runtime/sources_plugins
git clone https://github.com/lervag/vimtex.git ~/.vim_runtime/sources_plugins/vimtex
echo "set number
call pathogen#infect('~/.vim_runtime/sources_plugins/{}')
set gfn=Fantasque\ Sans\ Mono\ 12" > ~/.vim_runtime/my_configs.vim
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
colors peaksea

map <leader>tt :tabnext<cr>" >> ~/.vimrc

sudo apt-get install exuberant-ctags
