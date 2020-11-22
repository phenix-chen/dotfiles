set -e
# set -x

ETC=~/.local/etc
BIN=~/.local/bin

read -p "This may delete ~/.local/etc and ~/.loca/etc and rebuild them. Are you sure? (y/n)" -n 1
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]
then
    rm -rf $ETC
    rm -rf $BIN
else
    exit 1
fi

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
gsed -i "\:$ETC/init.sh:d" ~/.zshrc
echo ". $ETC/init.sh" >> ~/.zshrc

# vim
touch ~/.vimrc
gsed -i "\:$ETC/vimrc.vim:d" ~/.vimrc
echo "source $ETC/vimrc.vim" >> ~/.vimrc
if ! [ -d ~/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if ! [ -d ~/.oh-my-zsh/custom/plugins/zsh-completions ]; then
    git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
fi

. ~/.zshrc