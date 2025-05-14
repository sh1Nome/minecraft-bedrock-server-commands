FROM debian:latest

# zipをインストール
RUN apt-get update && apt-get install -y zip

CMD ["sleep", "infinity"]
