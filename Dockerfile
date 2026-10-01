FROM nginx:1.31.6-alpine-slim@sha256:f761b94f2cb9e8e05e2943d5f773609596113ef69b54e2433a996d109a8f78b7

# Debugging only: install bash and nano (uncomment if needed)
# RUN apk update && apk add --no-cache bash nano

# Copy webroot files to the Nginx html directory
COPY ./webroot /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
