# Minimal JSON Server image
FROM node:lts-alpine

# Install json-server globally
RUN npm i -g json-server

WORKDIR /app
EXPOSE 3001

# Démarrer json-server sur /data/generated.json, sans logique conditionnelle
CMD ["json-server", "/data/generated.json", "--host", "0.0.0.0", "--port", "3001"]
