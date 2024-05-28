#!/bin/bash

# 获取当前脚本所在目录的绝对路径
SCRIPT_DIR=$(dirname "$(realpath "$0")")

# 获取当前目录下所有的文件夹，并遍历每个文件夹
for folder in "$SCRIPT_DIR"/*/; do
    # 进入文件夹
    cd "$folder" || continue
    
    # 执行格式转换
    convert *.png -resize 1242x2209 -crop 1242x2208+0+0 "%d-5.5.png"
    
    # 返回上级目录
    cd "$SCRIPT_DIR" || exit
done
