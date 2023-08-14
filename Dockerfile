# Use the official Node.js image as the base
FROM node:16-alpine

# Set the working directory to /app
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose port for the backend
EXPOSE 80  

# Specify the command to start the application
CMD [ "npm","run", "develop" ]