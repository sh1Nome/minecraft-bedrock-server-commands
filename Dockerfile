FROM debian:latest

# zipをインストール
RUN apt-get update && apt-get install -y zip

# 作業用ユーザーを作成
RUN useradd -m user
USER user

WORKDIR /behavior-pack

# pack.shの実行が完了したらヘルスチェックが成功するようにする
HEALTHCHECK --interval=5s --timeout=3s --start-period=5s --retries=10 \
  CMD ["sh", "-c", "test -f dist/admin-commands.mcpack && exit 0 || exit 1"]

CMD ["sh", "-c", "sh pack.sh && sleep infinity"]