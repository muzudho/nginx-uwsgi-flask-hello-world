FROM ubuntu:20.10

RUN apt-get update && apt-get install -y \
    nginx

# ドキュメント・ルート
COPY ./app/public_html/www.example.com /app/public_html/www.example.com

# フォアグラウンドでnginx実行
CMD nginx -g "daemon off;"
