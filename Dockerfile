# Base image
FROM node:18-alpine AS base
WORKDIR /usr/src/app

# Install dependencies
FROM base AS deps
COPY package.json package-lock.json ./
RUN npm ci --production

# Build stage
FROM base AS build
COPY --from=deps /usr/src/app/node_modules ./node_modules
COPY . .

# Production image
FROM node:18-alpine AS prod
WORKDIR /usr/src/app

ENV NODE_ENV=production

COPY --from=build /usr/src/app ./

# ---- IMPORTANT ----
# Provide a default port so Docker build does not fail
ARG PORT=3000
ENV PORT=$PORT

# Expose the correct port (Render will replace PORT at runtime)
EXPOSE $PORT

CMD ["node", "server.js"]
# Base image
FROM node:18-alpine AS base
WORKDIR /usr/src/app

# Install dependencies
FROM base AS deps
COPY package.json package-lock.json ./
RUN npm ci --production

# Build stage
FROM base AS build
COPY --from=deps /usr/src/app/node_modules ./node_modules
COPY . .

# Production image
FROM node:18-alpine AS prod
WORKDIR /usr/src/app

ENV NODE_ENV=production

COPY --from=build /usr/src/app ./

# ---- IMPORTANT ----
# Provide a default port so Docker build does not fail
ARG PORT=3000
ENV PORT=$PORT

# Expose the correct port (Render will replace PORT at runtime)
EXPOSE $PORT

CMD ["node", "server.js"]
