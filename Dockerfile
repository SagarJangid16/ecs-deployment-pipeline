# Stage 1: Build the application
FROM node:14-alpine as builder
WORKDIR /app
COPY index.html .

# Stage 2: Serve the application with nginx
FROM nginx:alpine
COPY --from=builder /app/index.html /usr/share/nginx/html
