# HW-1: Containerized Flask app

```bash
docker build -t hw1-app:1.0 .
docker run -d --name hw1 -p 8000:8000 -e APP_GREETING=Merhaba -v hw1data:/data hw1-app:1.0
curl http://localhost:8000/health
curl "http://localhost:8000/greet?name=Ada"
```
