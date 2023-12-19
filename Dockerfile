# Use the official NGINX base image
FROM nginx:latest

# Copy the local index.html to the NGINX default public directory
COPY index.html /usr/share/nginx/html

# Expose port 80 for incoming HTTP traffic
EXPOSE 80

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]
