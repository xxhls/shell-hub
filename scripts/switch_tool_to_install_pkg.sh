#!/bin/bash

# Name: switch_tool_to_install_pkg.sh
# Desc: 选择工具来安装包
# Usage: bash ./scripts/switch_tool_to_install_pkg.sh
# Ahthor: xxhls <heyq020814@qq.com>
# Date: 2024-10-03 21:14
# Version: 0.0.1

pnpm_lock_existed=0
if [ -f pnpm-lock.yaml ]; then
    echo "发现 pnpm-lock.yaml 文件，尝试使用 pnpm 安装"
    pnpm_lock_existed=1
fi

if [ $pnpm_lock_existed -eq 1 ]; then
    pnpm install
    ret=$?
    if [ $ret -eq 0 ]; then
        exit 0
    else
        echo "pnpm 安装失败"
    fi
fi

yarn_lock_existed=0
if [ -f yarn.lock ]; then
    echo "发现 yarn.lock 文件，尝试使用 yarn 安装"
    yarn_lock_existed=1
fi

if [ $yarn_lock_existed -eq 1 ]; then
    yarn
    ret=$?
    if [ $ret -eq 0 ]; then
        exit 0
    else
        echo "yarn 安装失败"
    fi
fi

npm_lock_existed=0
if [ -f package-lock.json ]; then
    echo "发现 package-lock.json 文件，尝试使用 npm 安装"
    npm_lock_existed=1
fi

if [ $npm_lock_existed -eq 1 ]; then
    npm install
    ret=$?
    if [ $ret -eq 0 ]; then
        exit 0
    else
        echo "npm 安装失败"
    fi
fi

echo "未检测到任何安装包，请手动安装"
exit 1
