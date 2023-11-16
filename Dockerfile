# Usa l'immagine ufficiale di NGINX RTMP come base
FROM tiangolo/nginx-rtmp:latest

# Aggiorna i repository e installa ffmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    rm -rf /var/lib/apt/lists/*

# Assegna i permessi alla directory HLS
RUN chmod 777 /tmp/hls

# Copia il file di configurazione personalizzato
COPY nginx.conf /etc/nginx/nginx.conf
