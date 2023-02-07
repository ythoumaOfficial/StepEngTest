FROM node:lts-alpine
ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY ["package*.json", ".env","./"]
COPY prisma ./prisma/
RUN npm install --force
COPY . .
RUN npx prisma generate
EXPOSE 3000
RUN chown -R node /usr/src/app
USER node
CMD ["npm", "start"]
