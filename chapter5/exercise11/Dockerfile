# Use the official Node.js 14 image as the base image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the app's dependencies
RUN npm install

# Copy the rest of the app's source code to the working directory
COPY . .

# Set the container to listen on port 3000
EXPOSE 3000

# Start the app
CMD [ "node", "index.js" ]