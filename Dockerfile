FROM node:20

#VOLUME ["/var/lib/docker/containers", "/var/run/docker.sock"]

# LABEL logging="promtail"
# LABEL logging_jobname="local-loki"

# COPY promtail-config.yaml /etc/promtail/promtail-config.yaml
# COPY entrypoint.sh /entrypoint.sh

RUN apt-get update && \
    apt-get install -y curl && \
    curl -LO https://github.com/grafana/loki/releases/download/v2.7.0/promtail-linux-amd64.zip && \
    unzip promtail-linux-amd64.zip && \
    mv promtail-linux-amd64 /usr/local/bin/promtail && \
    rm promtail-linux-amd64.zip && \
    apt-get remove -y curl && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

# CMD ["promtail", "-config.file=/etc/promtail/promtail-config.yaml"]

 WORKDIR /app
 ADD package*.json ./
 RUN npm install
 ADD . .

 #RUN npm run build
 CMD ["npm", "start"]
 # RUN chmod +x entrypoint.sh
 # ENTRYPOINT ["/entrypoint.sh"]
