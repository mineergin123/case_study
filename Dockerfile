# Base image
FROM node:16

# Uygulama çalışma dizinini ayarla
WORKDIR /app

# Bağımlılık dosyalarını kopyala
COPY package*.json ./

# Bağımlılıkları yükle
RUN npm install

# Uygulama dosyalarını kopyala
COPY . .

# Uygulamayı başlat
CMD ["npm", "start"]

# Port aç
EXPOSE 3000
