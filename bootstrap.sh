set -e
set -x

ETC=~/.local/etc
BIN=~/.local/bin

if ! [ -d $ETC ]; then
    mkdir -p $ETC
fi
if ! [ -d $BIN ]; then
    mkdir -p $BIN
fi

# cd ~/.local
# if [-d dotfiles]; then
#     cd dotfiles
#     git pull
# else
#     git clone http:
# fi

cp -rf etc/* ~/.local/etc
cp -rf bin/* ~/.local/bin
cp bootstrap.sh $BIN/

# source init.sh
touch ~/.zshrc
sed -i "\:$ETC/init.sh:d" ~/.zshrc
echo ". $ETC/init.sh" >> ~/.zshrc

# vim
touch ~/.vimrc
sed -i "\:$ETC/vimrc.vim:d" ~/.vimrc
echo "source $ETC/vimrc.vim" >> ~/.vimrc

if ! [ -d ~/.oh-my-zsh/custom/plugins/zsh-completions ]; then
    git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
fi
. ~/.zshrc