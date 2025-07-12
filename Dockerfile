# Dockerfile

FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . .

# Make wait-for-it.sh executable inside the container
RUN chmod +x /app/wait-for-it.sh

CMD ["sh", "-c", "./wait-for-it.sh db:5432 -- uvicorn main:app --host 0.0.0.0 --port 5002"]
