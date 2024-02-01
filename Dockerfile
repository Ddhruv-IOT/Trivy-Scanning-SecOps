# Use Alpine Linux as base image
FROM node:alpine

# Set working directory inside the container
WORKDIR /App

# WIll not be Detected as it dont match with BuiltIn REGEX
ENV AWS_ACCESS_KEY_ID=AKIAIOSFODNN73EXAMPLE

# Will be detected as it Matches with BuiltIn REGEX
ENV GIT=ghp_abcdefghijklmnopqrstuvwxyzABCD012345

# Copy .secrets file from host to container
COPY . .

# Using two CMD to create a file Misconfiguration for testing
CMD ["echo", "hello"]
CMD ["ls", "-l"]

