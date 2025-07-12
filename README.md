
# 🚄 Rail Sathi Complaint Microservice (FastAPI + Docker)


This is a backend microservice built using **FastAPI**, designed to handle passenger complaints for the Rail Sathi platform. The service is Dockerized and uses **PostgreSQL** as the database. It supports complaint submission, retrieval, updating, deletion, and media file handling.

---

## ⚙️ Setup Instructions

### 📌 Prerequisites

- Docker Desktop (Windows/macOS/Linux): https://www.docker.com/products/docker-desktop
- Git

### 🛠️ Step-by-Step Setup

#### 1. Clone the repository
git clone https://github.com/YOUR_USERNAME/rail-sathi-fastapi.git
cd rail-sathi-fastapi

#### 2. Create a .env file from the example
copy .env.example .env   # For Windows
#### OR
cp .env.example .env     # For macOS/Linux

#### 3. Build and start the app using Docker
docker-compose up --build


## 🚀 Once Running, Access:

| Tool         | URL                                                                                           |
| ------------ | --------------------------------------------------------------------------------------------- |
| Swagger UI   | [http://localhost:5002/rs\_microservice/docs](http://localhost:5002/rs_microservice/docs)     |
| ReDoc UI     | [http://localhost:5002/rs\_microservice/redoc](http://localhost:5002/rs_microservice/redoc)   |
| Health Check | [http://localhost:5002/rs\_microservice/health](http://localhost:5002/rs_microservice/health) |


## 🌐 API Usage & Endpoints

✅ Complaint Management

| Method | Endpoint                                          | Description                        |
| ------ | ------------------------------------------------- | ---------------------------------- |
| POST   | `/rs_microservice/complaint/add`                  | Submit a new complaint with media  |
| GET    | `/rs_microservice/complaint/get/{complain_id}`    | Retrieve complaint by ID           |
| GET    | `/rs_microservice/complaint/get/date/{date}`      | Get complaints by date & mobile no |
| PATCH  | `/rs_microservice/complaint/update/{complain_id}` | Partially update a complaint       |
| PUT    | `/rs_microservice/complaint/update/{complain_id}` | Fully replace a complaint          |
| DELETE | `/rs_microservice/complaint/delete/{complain_id}` | Delete complaint (creator only)    |

📎 Media Management

| Method | Endpoint                                      | Description                 |
| ------ | --------------------------------------------- | --------------------------- |
| DELETE | `/rs_microservice/media/delete/{complain_id}` | Delete selected media files |

🚉 Train Info

| Method | Endpoint                                    | Description                           |
| ------ | ------------------------------------------- | ------------------------------------- |
| GET    | `/rs_microservice/train_details/{train_no}` | Get train, depot, division, zone info |

🩺 Health & Meta

| Method | Endpoint                  | Description   |
| ------ | ------------------------- | ------------- |
| GET    | `/rs_microservice/`       | Root endpoint |
| GET    | `/rs_microservice/health` | Health check  |
