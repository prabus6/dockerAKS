#official Redis image from the Docker Hub
FROM redis:latest

# Expose the Redis port
EXPOSE 6379

# Command to start Redis
CMD ["redis-server"]