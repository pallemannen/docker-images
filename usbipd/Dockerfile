FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y --no-install-recommends usbip hwdata && rm -rf /var/lib/apt/lists/*
EXPOSE 3240/tcp
CMD ["/usr/sbin/usbipd", "-D", "--no-daemon"]
