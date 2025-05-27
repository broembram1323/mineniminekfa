# Gebruik een stabiele Node.js versie
FROM node:20

# Maak werkdirectory
WORKDIR /usr/src/app

# Kopieer en installeer dependencies
COPY package*.json ./
RUN npm install

# Kopieer de rest van het project
COPY . .

# Open poort voor Northflank
EXPOSE 3000

# Start je bot
CMD ["npm", "start"]
