# About

## Terminal tools

| Package | What it does | Where to find |
|---|---|---|
|wd| Directories bookmark| https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/wd |
|oh-my-posh| pretty interface | https://ohmyposh.dev/ |
|oh-my-zsh| REQUIREMENT ⭐ |https://github.com/robbyrussell/oh-my-zsh |
|Nerd Fonts|  REQUIREMENT ⭐ | https://www.nerdfonts.com/ |
|bat| cat with wings |https://github.com/sharkdp/bat |
|kdash | Simple k8s dashboard| https://github.com/kdash-rs/kdash|

### Configuration files to backup

| Package | Path |
|---|---|
|wd | $HOME/.warprc |
|oh-my-posh | $HOME/gruvbox.omp.json |
|oh-my-zsh | $HOME/.zshrc AND $HOME/.oh-my-zsh/ |
|bat| $HOME/.config/bat/config |


#### For root
Does the same then change the default shell by:
~~~
# chsh -s $(which zsh) root
~~~

2. Install the font
3. Add as default font to your terminal

### Outdated
- Colorful less tool

1. Install python3-pygments
~~~
sudo dnf install python-pygments
~~~ 
2. Create file [.lessfilter](https://raw.githubusercontent.com/ehvs/vim_bash_settings/master/.lessfilter) in $HOME dir.
3. In your $HOME/.bashrc add
~~~
export LESS='-R'
export LESSOPEN='|~/.lessfilter %s'
~~~ 
4. Make ~/.lessfilter executable by running
~~~ 
chmod u+x ~/.lessfilter
~~~ 
