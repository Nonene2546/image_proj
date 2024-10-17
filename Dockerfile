# Step 1: Use an official Node.js runtime as a parent image
FROM node:16-alpine

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the package.json and yarn.lock files
COPY package.json yarn.lock ./

# Step 4: Install app dependencies
RUN yarn install

# Step 5: Copy the rest of the app source code to the container
COPY . .

# Step 6: Build the app
RUN yarn build

# Step 8: Start the app
CMD ["yarn", "vite", "--host"]
