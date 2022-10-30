FROM node:16-alpine3.15
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install --prod --frozen-lockfile

COPY . .
CMD ["node", "index.js"]

