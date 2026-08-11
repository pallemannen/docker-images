FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y --no-install-recommends usbip hwdata && rm -rf /var/lib/apt/lists/*
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 3240/tcp
CMD ["/entrypoint.sh"]
