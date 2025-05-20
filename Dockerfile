FROM debian:latest

# zipをインストール
RUN apt-get update && apt-get install -y zip

# 作業用ユーザーを作成
RUN useradd -m user
USER user

WORKDIR /behavior-pack

CMD ["sh", "-c", "sh pack.sh && sleep infinity"]