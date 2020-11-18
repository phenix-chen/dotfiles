function cdls() {
    cd "$@" && ls;
}

function cdd() {
    cd $1
    ls
}

function rm() {
    mv $1 ~/.Trash
}