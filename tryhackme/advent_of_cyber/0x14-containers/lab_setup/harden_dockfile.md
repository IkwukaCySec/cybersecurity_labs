# Hardened Dockerfile Example
FROM ubuntu:latest
USER nonroot  # Drop root
RUN apt-get update && apt-get install -y least-privileges
# Remove socket mount from docker-compose!
