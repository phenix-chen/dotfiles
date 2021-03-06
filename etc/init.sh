ETC=~/.myconfig/etc
BIN=~/.myconfig/bin

# 交互式模式的初始化脚本
# 防止被加载两次
# if [ -z "_INIT_SH_LOADED" ]; then
#     _INIT_SH_LOADED=1
# else
#     return
# fi

# 如果是非交互式则退出，比如 bash test.sh 这种调用 bash 运行脚本时就不是交互式
# 只有直接敲 bash 进入的等待用户输入命令的那种模式才成为交互式，才往下初始化
case "$-" in
    *i*) ;;
    *) return
esac

# 将个人bin目录加入PATH
if [ -d $BIN ]; then
    export PATH=$BIN:$PATH
fi

if [ -f $ETC/local.sh ]; then
    . $ETC/local.sh
fi

# 如果是zsh，source init.zsh
if [ -n "$ZSH_VERSION" ] && [ -f $ETC/zsh/initzsh.zsh ]; then
    . $ETC/zsh/zshrc.zsh
fi

# 如果是 zsh 的话，source 一下 ~/.local/etc/function.sh
if [ -n "$ZSH_VERSION" ] || [ -n "$BASH_VERSION" ]; then
    if [[ $- == *i* ]] && [ -z "$_INIT_SH_NOFUN" ]; then
        if [ -f $ETC/function.sh ]; then
            . $ETC/function.sh
        fi
    fi
fi

# 如果是登陆模式，那么 source 一下 ~/.local/etc/login.sh
if [ -n "$ZSH_VERSION" ]; then
    if [[ -o login ]]; then
        if [ -f $ETC/login.sh ] && [ -z "$_INIT_SH_NOLOG" ]; then
            . $ETC/login.sh
        fi
    fi
fi
