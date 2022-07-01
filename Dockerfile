FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .

RUN npm install

COPY . .

CMD ["node", ".","--db","mongodb+srv://Bintangp02:Bintangp02@bntgp02.k2q5j.mongodb.net/?retryWrites=true&w=majority"]
