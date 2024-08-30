# Base image with Alpine Linux and OpenJDK
FROM ghcr.io/pterodactyl/yolks:java_17

# Setting up work directory
WORKDIR /home/container

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /entrypoint.sh

# Entry point for the container
ENTRYPOINT ["/entrypoint.sh"]
