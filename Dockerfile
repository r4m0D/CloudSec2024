# Use Node.js version 20.11.1 as the base image
FROM node:20.11.1

# Set the working directory inside the container to /app
WORKDIR /app

# Copy the application code to the working directory
COPY . /app

# Install ejs for rendering HTML and jest for running tests.
# It's a good practice to specify exact versions to ensure consistency.
RUN npm install 

# Install other project dependencies.
# It's assumed that jest is not already listed in your package.json.
# If it is, this command ensures all dependencies, including ejs and jest, are installed.
RUN npm install ejs 

RUN npm install --save-dev jest supertest

# Before starting the application, run the jest tests.
# The application will not start if tests fail.
CMD npm test && npm start

# Inform Docker that the container listens on port 3000 at runtime.
EXPOSE 3000
