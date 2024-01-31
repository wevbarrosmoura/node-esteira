const winston = require('winston');
const LokiTransport = require('winston-loki');

// Configuração do transporte do Loki
const lokiTransport = new LokiTransport({
    host: 'http://140.238.187.194', // Endereço do servidor do Loki
    port: 3100,        // Porta do servidor do Loki
    labels: {          // Rótulos adicionais que serão incluídos em todos os registros
        app: 'myapp',
        env: 'development'
    }
});

// Configuração do logger Winston
const logger = winston.createLogger({
    transports: [
        new winston.transports.Console(), // Para exibir logs no console
        lokiTransport                      // Para enviar logs para o Loki
    ]
});

// Exemplo de uso do logger

while (true) {
    logger.info('Hello, Winston Loki! Logging to Loki.');
    
    const start = new Date().getTime();
    let end = start;
    while (end < start + 3000) {
        end = new Date().getTime();
    }

}
