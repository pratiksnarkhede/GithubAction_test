# Use the official NGINX image as the base image
FROM nginx:latest

# Set the working directory to /app (adjust as needed)
WORKDIR /app

# Copy the contents of your local build directory to the container
COPY . /app

# If you have additional configuration files, you can copy them as well
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose the port that NGINX will run on (adjust as needed)
EXPOSE 80

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]
