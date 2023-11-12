# Use the latest stable Node.js version
FROM node:21.1.0

# Create and set the working directory
RUN mkdir /usr/src/app 
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files
COPY package*.json /usr/src/app/

# Install the dependencies
RUN npm install

# Copy the rest of the app files
COPY . /usr/src/app

# Expose the port that the app listens on
EXPOSE 4000

# Start the app
CMD [ "npm", "start" ]
