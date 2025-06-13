FROM alpine:latest

# Install rsync and cron
RUN apk add --no-cache rsync busybox-suid

# Create directories for source and destination
#RUN mkdir -p /source /destination

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]