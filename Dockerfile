FROM node:14.17.5
RUN addgroup -S nonroot \
    && adduser -S nonroot -G nonroot
USER nonroot
WORKDIR /app
COPY package.json ./
RUN npm install
COPY app .
COPY Dockerfile .
COPY app.js .
COPY package.json .
CMD ["node","app.js"]
EXPOSE 3005
