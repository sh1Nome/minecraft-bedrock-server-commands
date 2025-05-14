#!/bin/bash

set -e

SRC_DIR="src"
DIST_DIR="dist"

# distディレクトリが存在すれば中身を削除、なければ作成
if [ -d "$DIST_DIR" ]; then
    rm -rf "$DIST_DIR"/*
else
    mkdir "$DIST_DIR"
fi

# src直下のディレクトリごとに処理
for dir in "$SRC_DIR"/*/; do
    # ディレクトリ名のみ取得
    pack_name=$(basename "$dir")
    # ディレクトリ内のファイル・ディレクトリのみをzip化（src/を含めない）
    (cd "$dir" && zip -r "../${pack_name}.zip" .)
    # 拡張子を.mcpackに変更
    mv "$SRC_DIR/${pack_name}.zip" "${pack_name}.mcpack"
    # distに移動
    mv "${pack_name}.mcpack" "$DIST_DIR/"
done

echo "すべてのパックがzip化され、$DIST_DIR に移動されました。"
