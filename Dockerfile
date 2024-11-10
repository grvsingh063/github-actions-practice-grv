# Use a minimal base image (e.g., Alpine)
FROM alpine:latest

# Create a directory for the app (optional)
WORKDIR /app

# Create a simple shell script that prints "Hello, World!"
RUN echo -e '#!/bin/sh\n\necho "Hello, World!"' > hello.sh

# Make the script executable
RUN chmod +x hello.sh

# Set the default command to run the shell script
CMD ["./hello.sh"]