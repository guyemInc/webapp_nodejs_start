# Use official Node.js Windows image
FROM node:18-windowsservercore-ltsc2022

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Expose port 8099
EXPOSE 8099

# Run the application
CMD ["node", "index.js"]
