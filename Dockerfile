# https://lipanski.com/posts/smallest-docker-image-static-website
# https://github.com/lipanski/docker-static-website
# Base image pinned to an immutable version + digest (reproducible builds).
# To update: bump the tag and its matching sha256 digest together.
FROM lipanski/docker-static-website:2.6.0@sha256:66a530684a934a9b94f65a90f286cba291a7daf4dd7d55dcc17f217915056cd5

# Copy the static website
# Use the .dockerignore file to control what ends up inside the image!
COPY ./dist .

# Run as the unprivileged user provided by the base image, never as root.
USER static
