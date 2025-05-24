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

CMD ["sh", "-c", "npm install && npm run docs:dev"]
# http://localhost:5173/