# Use an LTS version of Node.js
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if present) to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application files
COPY . ./
ENV PORT 3000

# Expose port 3000
EXPOSE $PORT

# Command to run the application
CMD ["npm", "run","dev"]
