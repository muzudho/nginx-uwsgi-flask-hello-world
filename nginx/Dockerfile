FROM ubuntu:20.10

# nginx の最新版を入手するための手続き。
# RUN apt-get update && apt-get install -y \
#     gnupg2 \
#     ca-certificates \
#     # Linux standard base.
#     lsb-release \
#     wget

# `lsb_release -cs` - コードネーム(-c)を 短い名前(-s) で表示します。
# RUN lsb_release -cs
# groovy

# `deb` - Debian ソフトウェア リポジトリ。
# RUN echo "deb http://nginx.org/packages/mainline/ubuntu 'lsb_release -cs' nginx" | tee /etc/apt/sources.list.d/nginx.list

# nginx公式サイトから、PGP鍵をダウンロードします。
# RUN wget http://nginx.org/keys/nginx_signing.key

# 鍵をローカルに保存します。
# RUN apt-key add nginx_signing.key
# RUN tee /etc/apt/trusted.gpg.d/nginx_signing.gpg

# PGP鍵の確認。
# RUN apt-key list
# /etc/apt/trusted.gpg
# --------------------
# pub   rsa2048 2011-08-19 [SC] [expires: 2024-06-14]
#       573B FD6B 3D8F BC64 1079  A6AB ABF5 BD82 7BD9 BF62
# uid           [ unknown] nginx signing key <signing-key@nginx.com>

# (2) リポジトリを一覧に追加
# RUN VCNAME=`cat /etc/lsb-release | grep DISTRIB_CODENAME | cut -d= -f2` && /bin/bash -c "echo \"deb http://nginx.org/packages/ubuntu/ $VCNAME nginx\" >> /etc/apt/sources.list"
# RUN VCNAME=`cat /etc/lsb-release | grep DISTRIB_CODENAME | cut -d= -f2` && /bin/bash -c "echo \"deb-src http://nginx.org/packages/ubuntu/ $VCNAME nginx\" >> /etc/apt/sources.list"

# RUN apt-key fingerprint ABF5BD827BD9BF62
# RUN gpg --with-fingerprint ABF5BD827BD9BF62

RUN apt-get update && apt-get install -y \
    nginx

# 設定ファイルのテンプレート
# COPY ./templates/default.conf.template /etc/nginx/templates/default.conf.template
COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

# ドキュメント・ルート
COPY ./app/index.html /app/index.html

# フォアグラウンドでnginx実行
CMD nginx -g "daemon off;"
