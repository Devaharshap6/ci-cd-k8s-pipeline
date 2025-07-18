# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy files
COPY app/package*.json ./
RUN npm install
COPY app .

# Expose port and start app
EXPOSE 3000
CMD ["node", "index.js"]
