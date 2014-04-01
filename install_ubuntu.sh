sudo apt-get install exuberant-ctags
cd ~
echo "<<<<<< Install Monaco font"
curl -kL https://raw.github.com/cstrap/monaco-font/master/install-font-ubuntu.sh | bash
echo "<<<<<< Clone amix/vimrc"
git clone https://github.com/amix/vimrc.git .vim_runtime
cd ~/.vim_runtime
echo "<<<<<< Clone molokai theme"
mkdir sources_plugins
cd sources_plugins
git clone https://github.com/tomasr/molokai.git
echo "<<<<<< Set Monaco and molokai"
cd ~/.vim_runtime
echo "set number
call pathogen#infect('~/.vim_runtime/sources_plugins')
colorscheme molokai
set gfn=Monaco\ 12
map <leader>tt :tabnext<cr>" > my_configs.vim
echo "<<<<<< Install vimrc"
sh install_awesome_vimrc.sh

