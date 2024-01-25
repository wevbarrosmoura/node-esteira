FROM node:latest
RUN curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-8.9.2-amd64.deb
RUN dpkg -i filebeat-8.9.2-amd64.deb

COPY filebeat.yml /etc/filebeat/filebeat.yml
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /app
ADD package*.json ./
RUN npm install
ADD . .

ENTRYPOINT [ "/entrypoint.sh" ]

