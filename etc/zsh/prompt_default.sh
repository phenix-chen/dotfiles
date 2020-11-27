if [ -n "$BASH_VERSION" ]; then
    export PS1='\u@\h:\w\$ '
else
    if [ "$UID" -eq 0 ]; then
        export PROMPT='%f%n@%m:%~%# '
    else
        export PROMPT='%f%n@%m:%~\$ '
    fi
fi
