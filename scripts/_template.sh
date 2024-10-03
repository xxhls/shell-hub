#!/bin/bash

# Name: _template.sh
# Desc: 记录shell脚本常用变量或结构
# Usage: bash ./scripts/template.sh
# Ahthor: xxhls <heyq020814@qq.com>
# Date: 2024-10-03 20:14
# Version: 0.0.1

# 1. 丢弃标准输出
# 2. 标准错误等同标准输出
ls -a >/dev/null 2>&1
ret=$?

echo "ls -a 的退出状态 $ret"
echo "shell脚本文件本身 $0"
echo "第一个参数 $1"
echo "参数个数 $#"
echo "所有参数 $*"
echo "进程号 $$"
echo "上一个后台进程的进程号 $!"
echo "当前命令的选项设置 $-"

echo "bash进程的进程ID $BASHPID"
echo "当前shell的参数 $BASHOPTS"
echo "用户的主目录 $HOME"
echo "当前主机的名称 $HOST"
echo "环境变量列表 $PATH"
echo "当前工作目录 $PWD"
echo "0-32767之间的随机数 $RANDOM"
echo "shell的名称 $SHELL"
echo "当前用户的用户ID $UID"
echo "当前用户的用户名 $USER"
