# 🚄 Rail Sathi Complaint Microservice – FastAPI

This project is a complaint-handling backend microservice built with FastAPI and PostgreSQL. It is fully Dockerized for ease of setup, local development, and deployment.

---

## ⚙️ Setup Instructions

### Prerequisites

- Docker & Docker Compose
- Git

### Steps to Run

```bash
# 1. Clone the repository
git clone https://github.com/YOUR_USERNAME/rail-sathi-fastapi.git
cd rail-sathi-fastapi

# 2. Copy environment variables template
copy .env.example .env   # (Use cp for macOS/Linux)

# 3. Build and start the application
docker-compose up --build
