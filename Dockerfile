# Use Nginx as base image
FROM nginx:alpine

# Clean default Nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy the website from src/ into nginx public directory
COPY src/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

