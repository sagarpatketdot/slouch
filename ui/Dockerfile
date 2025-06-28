FROM node:24-alpine AS build
RUN mkdir /slouch-ui
WORKDIR /slouch-ui
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM node:24-alpine
RUN mkdir /slouch-ui
WORKDIR /slouch-ui
COPY --from=build /slouch-ui/.output/* ./
WORKDIR /slouch-ui
RUN npm install --production
ENTRYPOINT ["node","index.mjs"]
