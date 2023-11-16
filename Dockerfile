# Usa l'immagine ufficiale di NGINX RTMP come base
FROM tiangolo/nginx-rtmp:latest

# Aggiorna i repository e installa ffmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    rm -rf /var/lib/apt/lists/*

# Copia il file di configurazione personalizzato
COPY nginx.conf /etc/nginx/nginx.conf

# Crea la directory HLS e assegna i permessi
RUN mkdir -p /tmp/hls && \
    chmod 777 /tmp/hls
