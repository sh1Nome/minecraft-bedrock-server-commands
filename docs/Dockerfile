FROM node:24-bookworm

# 作業ユーザーを作成
ARG USER_ID
ARG GROUP_ID
RUN getent group $GROUP_ID && groupdel $(getent group $GROUP_ID | cut -d: -f1) || true && \
    getent passwd $USER_ID && userdel -r $(getent passwd $USER_ID | cut -d: -f1) || true && \
    groupadd -g $GROUP_ID appuser && \
    useradd -m -u $USER_ID -g appuser appuser
USER appuser

WORKDIR /docs

HEALTHCHECK --interval=5s --timeout=3s --start-period=5s --retries=10 \
  CMD ["sh", "-c", "test -f /tmp/healthy && exit 0 || exit 1"]

CMD ["sh", "-c", "npm install && touch /tmp/healthy && npm run docs:dev"]
# http://localhost:5173/