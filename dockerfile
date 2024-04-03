# Use Node.js version 14 as the base image
FROM node:14

# Set the working directory in the container to /app
WORKDIR /app

# Copy all source code to the working directory
COPY . .

# Set environment variables
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Install dependencies and build the application
RUN npm install --production --unsafe-perm && npm run build

# Expose port 8080
EXPOSE 8080

# Run the server when the container launches
CMD ["npm", "start"]

LABEL org.opencontainers.image.source https://github.com/pronet-alfirdan/image-node