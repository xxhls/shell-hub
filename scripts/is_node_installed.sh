#!/bin/bash

# Name: is_node_installed.sh
# Desc: 检测 node 是否安装
# Usage: bash ./scripts/is_node_installed.sh
# Ahthor: xxhls <heyq020814@qq.com>
# Date: 2024-10-03 20:32
# Version: 0.0.1

node -v >/dev/null 2>&1
ret=$?
if [ $ret -eq 0 ]; then
    echo "检测到 node 已安装，版本为 $(node -v)"
    exit 0
else
    echo "检测到 node 未安装"
    exit 1
fi
