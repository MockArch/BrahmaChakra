# Use the official Golang image as base
FROM golang:1.16-alpine as builder

# Set the working directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY . .

# Build the binary with Go
RUN CGO_ENABLED=0 go build -o cache-api

# Set the base image to Alpine
FROM alpine:latest

# Install SQLite and update the package index
RUN apk update && \
    apk add --no-cache sqlite

# Set the working directory inside the container
WORKDIR /app

# Copy the binary from the builder image
COPY --from=builder /app/cache-api .

# Expose the default port (8080)
EXPOSE 8080

# Run the binary when the container starts
CMD ["./cache-api"]