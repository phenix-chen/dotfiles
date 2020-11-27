set -e
# set -x

ETC=~/.myconfig/etc
BIN=~/.myconfig/bin
read -p "This may delete ~/.myconfig/etc and ~/.myconfig/etc and rebuild them. Are you sure? (y/n)" -n 1
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

cp -rf etc/* $ETC
cp -rf bin/* $BIN
cp bootstrap.sh $BIN/

# source init.sh
touch ~/.zshrc
gsed -i "\:$ETC/init.sh:d" ~/.zshrc
echo ". $ETC/init.sh" >> ~/.zshrc

# nvim
if [ -f ~/.config/nvim/init.vim ]; then
    mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.bak
fi

if ! [ -d ~/.config/nvim ]; then
    mkdir -p ~/.config/nvim
fi
touch ~/.config/nvim/init.vim
echo "source $ETC/nvim/init.vim" >> ~/.config/nvim/init.vim

# vim
# touch ~/.vimrc
# gsed -i "\:$ETC/vim/vimrc.vim:d" ~/.vimrc
# echo "source $ETC/vim/vimrc.vim" >> ~/.vimrc


. ~/.zshrc
