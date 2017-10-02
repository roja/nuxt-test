FROM node:alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY . /usr/src/app/
RUN npm set progress=false
# RUN npm install

# # Build app
RUN npm run generate

# ENV HOST 0.0.0.0
# EXPOSE 3000

# start command
CMD npm run generate

# then deploy...