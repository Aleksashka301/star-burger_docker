FROM python:3.12-slim
WORKDIR /app

ADD --checksum=sha256:099dc847a832b55b1cc4f63e4102f9e45c9c11a23eb645574b5827033e5db3ef \
    https://github.com/Aleksashka301/star-burger/archive/refs/heads/main.zip \
    /app/source.zip

RUN apt-get update && apt-get install -y unzip \
    && unzip /app/source.zip -d /app \
    && rm /app/source.zip \
    && pip install --no-cache-dir -r /app/star-burger*/requirements.txt


