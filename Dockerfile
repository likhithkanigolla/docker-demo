# Use Ubuntu as the base image
FROM ubuntu:latest

# Install any necessary packages
RUN apt-get update && \
    apt-get install -y curl

# Copy all files from the current directory to the container
COPY . /app

# Set the working directory inside the container
WORKDIR /app

# Command to run when the container starts
CMD ["sh", "-c", "while :; do sleep 30; done"]

