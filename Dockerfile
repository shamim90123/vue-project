# Use the official Node.js image with Node.js version 16
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files from the current directory to the working directory
COPY . .

# Expose the port the app runs on (5173 in this case)
EXPOSE 5173

# Define the command to run your application
CMD ["npm", "run", "dev"]
