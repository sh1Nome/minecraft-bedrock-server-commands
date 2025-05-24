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

# srcディレクトリの中身のみをzip化し、拡張子を.mcpackに変更
(cd "$SRC_DIR" && zip -r "../$DIST_DIR/admin-commands.zip" .)
mv "$DIST_DIR/admin-commands.zip" "$DIST_DIR/admin-commands.mcpack"

echo "$SRC_DIR 以下が admin-commands.mcpack として $DIST_DIR に作成されました。"

# 成功フラグを作成
# 失敗した場合はこのファイルが存在しないので、CI/CDのジョブでこのファイルの存在を確認することで成功を判定できる
touch /tmp/pack_succeeded
