FROM debian:bookworm

# zipをインストール
RUN apt-get update && apt-get install -y zip

# 作業ユーザーを作成
ARG USER_ID
ARG GROUP_ID
RUN getent group $GROUP_ID && groupdel $(getent group $GROUP_ID | cut -d: -f1) || true && \
    getent passwd $USER_ID && userdel -r $(getent passwd $USER_ID | cut -d: -f1) || true && \
    groupadd -g $GROUP_ID appuser && \
    useradd -m -u $USER_ID -g appuser appuser
USER appuser

WORKDIR /behavior-pack

# pack.shの実行が完了したらヘルスチェックが成功するようにする
HEALTHCHECK --interval=5s --timeout=3s --start-period=5s --retries=10 \
  CMD ["sh", "-c", "test -f dist/admin-commands.mcpack && exit 0 || exit 1"]

CMD ["sh", "-c", "sh pack.sh && sleep infinity"]