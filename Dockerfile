# Use Windows Server Core as base image
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Install Node.js
RUN powershell -Command \
    $url = 'https://nodejs.org/dist/v18.19.0/node-v18.19.0-win-x64.msi'; \
    Invoke-WebRequest -Uri $url -OutFile 'node.msi'; \
    Start-Process msiexec.exe -ArgumentList '/i node.msi /quiet' -Wait; \
    Remove-Item node.msi

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
