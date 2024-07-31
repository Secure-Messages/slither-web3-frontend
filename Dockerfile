# Use a specific version of Node.js based on Alpine
FROM node:20-alpine

# Create app directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# If using Nginx as a reverse proxy or static server, assume nginx.conf is configured correctly
# and Nginx is set up in the host or another container.
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose the port the app runs on
EXPOSE 8080

# Command to run your app
CMD [ "node", "server.js" ]
