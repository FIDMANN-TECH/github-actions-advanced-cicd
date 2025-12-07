FROM node:18-alpine AS base
WORKDIR /usr/src/app

FROM base AS deps
COPY package.json package-lock.json ./
RUN npm ci --production

FROM base AS build
COPY --from=deps /usr/src/app/node_modules ./node_modules
COPY . .

FROM node:18-alpine AS prod
WORKDIR /usr/src/app

ENV NODE_ENV=production

COPY --from=build /usr/src/app ./

EXPOSE 3000  # doesn't matter, Render ignores this

CMD ["node", "server.js"]
