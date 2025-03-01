FROM ghcr.io/gitroomhq/postiz-app:latest
COPY var/docker/supervisord/backend.conf /app/supervisord_available_configs/backend.conf

