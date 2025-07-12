# 🚄 Rail Sathi Complaint Microservice (FastAPI + Docker)

This is a backend microservice built using **FastAPI**, designed to handle passenger complaints for the Rail Sathi platform. The service is Dockerized and uses **PostgreSQL** as the database. It supports complaint submission, retrieval, updating, deletion, and media file handling.

---

## ⚙️ Setup Instructions

### 📌 Prerequisites

- Docker Desktop (Windows/macOS/Linux): https://www.docker.com/products/docker-desktop
- Git

### 🛠️ Step-by-Step Setup

```bash
# 1. Clone the repository
git clone https://github.com/YOUR_USERNAME/rail-sathi-fastapi.git
cd rail-sathi-fastapi

# 2. Create a .env file from the example
copy .env.example .env   # For Windows
# OR
cp .env.example .env     # For macOS/Linux

# 3. Build and start the app using Docker
docker-compose up --build
