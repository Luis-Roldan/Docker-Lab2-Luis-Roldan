# //install node in the container
FROM node:22-alpine 

# //create a new working directory and chang to it
WORKDIR /app

# //copy the package.json inside working directory
COPY package.json ./

# //download all the packages
RUN npm install

# //Copies all files and folders from your local machine to the container's working directory
COPY . .

# //Executes the build script defined in package.json to prepare the app for production
RUN npm run build

# //expose your 3000 port of docker to your system
EXPOSE 3000


# //Specifies the command to run the application once the container starts up
CMD ["npm", "start"]