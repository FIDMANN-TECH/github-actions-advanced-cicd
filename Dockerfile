# Use official Node LTS
FROM node:18-alpine AS base
WORKDIR /usr/src/app

# Install deps only when needed
FROM base AS deps
COPY package.json package-lock.json ./
RUN npm ci --production

# Copy app
FROM base AS build
COPY --from=deps /usr/src/app/node_modules ./node_modules
COPY . .
# no build step needed for simple server; if you add a frontend build, run it here

# Runtime image (smaller)
FROM node:18-alpine AS prod
WORKDIR /usr/src/app
ENV NODE_ENV=production
COPY --from=build /usr/src/app ./
# Use a non-root user for best practices
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser
# Render provides PORT via env var; expose a default for local clarity
EXPOSE 10000
CMD ["node", "server.js"]
