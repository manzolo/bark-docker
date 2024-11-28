# Usa un'immagine di base con Python preinstallato
FROM python:3.9-slim

# Installa le dipendenze di sistema necessarie
RUN apt-get update && apt-get install -y \
    git \
    ffmpeg \
    libsndfile1 \
    && rm -rf /var/lib/apt/lists/*

# Imposta la directory di lavoro all'interno del container
WORKDIR /app

# Installa Bark
RUN pip install git+https://github.com/suno-ai/bark.git

COPY run_bark.sh /app/run_bark.sh
RUN chmod +x /app/run_bark.sh

# Avvia il container con lo script
CMD ["/app/run_bark.sh"]
