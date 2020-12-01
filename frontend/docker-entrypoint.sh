#!/bin/sh

cd /app
uwsgi uwsgi.ini
# ↓ こう書くとエラー。
# uwsgi /app/uwsgi.ini
