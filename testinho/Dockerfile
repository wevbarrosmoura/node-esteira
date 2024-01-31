FROM node:20


 WORKDIR /app
 ADD package*.json ./
 RUN npm install
 ADD . .

 #RUN npm run build
 CMD ["npm", "start"]