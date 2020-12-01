FROM ubuntu:20.10

RUN apt-get update && apt-get install -y \
    nginx

# 設定ファイル
COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

# ドキュメント・ルート
COPY ./app/index.html /app/index.html

# フォアグラウンドでnginx実行
CMD nginx -g "daemon off;"
