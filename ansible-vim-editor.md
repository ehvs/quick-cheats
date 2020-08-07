### Download a VIM plugin tool

[Junegunn/VimPlugin](https://github.com/junegunn/vim-plug)
~~~
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
~~~

1. Create and set the config file for handling the plugins with `~/.vimrc`. Using `~/.vim/plugged` will put the plugins under this directory.
~~~
" Automatically install
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Mandatory text
call plug#begin('~/.vim/plugged')

Plug 'pearofducks/ansible-vim'

call plug#end()

# Recognize yaml files
au BufRead,BufNewFile *.yml set filetype=yaml.ansible
au BufRead,BufNewFile *.yaml set filetype=yaml.ansible
~~~

- Since this plugin has specific [requirements](https://github.com/pearofducks/ansible-vim#introduction) to recognize Ansible files the below lines were added in the `~/.vimrc` file.
~~~
au BufRead,BufNewFile *.yml set filetype=yaml.ansible
au BufRead,BufNewFile *.yaml set filetype=yaml.ansible
~~~

2. Install the plugin [pearofducks/ansible-vim](https://github.com/pearofducks/ansible-vim) and when opening the Vim interactive window, then install the plugin (listed at your .vimrc) by running:
~~~
$ vim
$ :PlugInstall
~~~
