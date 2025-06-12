FROM ghcr.io/gitroomhq/postiz-app:latest

# Copy backend supervisor config
COPY var/docker/supervisord/backend.conf /app/supervisord_available_configs/backend.conf
RUN ln -sf /app/supervisord_available_configs/backend.conf /etc/supervisor.d/backend.conf

EXPOSE 3000
EXPOSE 4200

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
