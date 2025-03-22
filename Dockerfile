# Use a minimal base image (Alpine for small size, Debian for compatibility)
FROM debian:bullseye-slim 

# Set working directory
WORKDIR /app

# Copy the precompiled Rust binary
COPY zklogin /app/zklogin

# Ensure the binary has execution permissions
RUN chmod +x /app/zklogin
EXPOSE 8080
# Set default command to run the Rust app
CMD ["/app/zklogin"]
