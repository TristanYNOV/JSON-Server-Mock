# JSON Server – Docker (port 3001)

## Prérequis
- Placez `db.json` (et éventuellement `routes.json`) dans ce dossier.

## Démarrer
```bash
docker compose up -d --build
```

API: http://localhost:3001

## Changer de port
- Côté host (exposer 3005) : dans `docker-compose.yml` → `ports: ["3005:3001"]`
- Côté conteneur (changer port interne) :
```yaml
environment:
  - PORT=3100
ports:
  - "3005:3100"
```

## Sans docker-compose
```bash
docker build -t json-server-mock .
docker run -d --name json-server-mock   -p 3001:3001   -v "$PWD/db.json:/data/db.json:ro"   -v "$PWD/routes.json:/data/routes.json:ro"   -e PORT=3001   json-server-mock
```
