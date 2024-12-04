# Build stage
FROM node:lts-alpine AS builder
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

# Production stage
FROM node:lts-alpine
ENV NODE_ENV=production
WORKDIR /usr/src/app

# Install production dependencies
COPY package*.json ./
RUN npm ci --only=production

# Copy built application
COPY --from=builder /usr/src/app/dist ./dist

# Add tini for proper signal handling
RUN apk add --no-cache tini

# Create non-root user
USER node

# Use tini as entrypoint
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["node", "dist/main"]
