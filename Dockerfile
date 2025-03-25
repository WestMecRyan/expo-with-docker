FROM node:18

# Create app directory
WORKDIR /app

# Install essential packages
RUN apt-get update && apt-get install -y \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Install Expo CLI
RUN npm install -g expo-cli

# Expose the ports used by Expo
EXPOSE 19000 19001 19002 19006 8081

# Start Expo by default
CMD ["npm", "start"]
