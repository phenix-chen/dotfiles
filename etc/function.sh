function cdls() {
    cd "$@" && ls;
}

function cdd() {
    cd $1
    ls
}