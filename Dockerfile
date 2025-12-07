# Base image
FROM node:18-alpine AS base
WORKDIR /usr/src/app

# Install dependencies
FROM base AS deps
COPY package.json package-lock.json ./
RUN npm ci --production

# Build stage (no build step here, but we copy everything)
FROM base AS build
COPY --from=deps /usr/src/app/node_modules ./node_modules
COPY . .

# Production image
FROM node:18-alpine AS prod
WORKDIR /usr/src/app

ENV NODE_ENV=production

# Copy only required files
COPY --from=build /usr/src/app ./

# Use Render’s provided PORT (do not set EXPOSE 10000)
EXPOSE 1000

# Run the server
CMD ["node", "server.js"]
