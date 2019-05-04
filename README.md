# For file: .bashrc

via Git clone - Clone this repository to your home directory.
~~~
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
~~~
Add to the ~/.bashrc:

~~~
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
fi
~~~
Source [magicmonty/bash-git-prompt](https://github.com/magicmonty/bash-git-prompt#via-git-clone)


# For file: my-vimrc

Check if you do not have the file:
`/etc/vimrc`

If you do, remove it.

Create a 

.vimrc at home directory

Eg. `/home/username/.vimrc`

[CheatSheet](http://rogerdudler.github.io/git-guide/)
