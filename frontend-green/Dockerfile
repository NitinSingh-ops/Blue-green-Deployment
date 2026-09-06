FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --omit=dev
COPY . .
ENV PORT=3200
EXPOSE 3200
CMD ["npm", "start"]
