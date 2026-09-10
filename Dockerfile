FROM nginx:1.31.5-alpine-slim@sha256:3b171d7224b669faa3cc2137fea0a65301791df1ec1f271ebd2a2b7461f7fade

# Debugging only: install bash and nano (uncomment if needed)
# RUN apk update && apk add --no-cache bash nano

# Copy webroot files to the Nginx html directory
COPY ./webroot /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
