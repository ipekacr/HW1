FROM python:3.12-slim

WORKDIR /app

# Install dependencies first so this layer is cached when only app.py changes
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

# Defaults (override with `docker run -e ...`)
ENV APP_GREETING=Hello \
    DATA_DIR=/data \
    PYTHONUNBUFFERED=1

EXPOSE 8000

CMD ["python", "app.py"]
