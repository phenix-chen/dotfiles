# README.md

## Installation

```shell
./bootstrap.sh
```

## 架构
- `./bin/` 用于存放自定义的脚本
- `./etc/` 用于存放各种软件的配置文件与安装脚本
- `bootstrap.sh` 会家bin和etc两个目录复制到`~/.local/`目录下。在`~`下创建dotfiles，或在已有的dotfiles末尾加入`source`语句，从而连接到该项目的配置文件。
- `./etc`下，每一个文件夹对应一个应用。

## zsh
### zsh初始化流程
1. source init.sh
2. source initzsh.sh

### zsh配置文件类型
- `alias.zsh`: 配置alias的脚本
- `compelation.zsh`: 实现应用的自动补全的脚本
- `path.zsh`: 配置应用路径的脚本
- `init.zsh`: 应用启动脚本

## workflow
- 用bootstrap.sh配置默认配置项
- 在home目录下的dotfiles中配置临时的修改项
- 临时配置使用一段时间，测试稳定后，加入仓库

## TODO
- [ ] vim
- [ ] tmux
- [ ] git
- [ ] ohmyzsh
- [ ] bin
- [ ] 修改gsed
- [ ] 匹配不同系统的问题
- [ ] 优化zsh启动速度