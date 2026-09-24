Todo API

A simple Flask-based To-Do API built as a hands-on DevOps learning project — covering containerization, CI/CD, and cloud deployment fundamentals.

Features
CRUD operations for to-do items (GET, POST, DELETE)
Health check endpoint for monitoring/uptime checks
Fully containerized with Docker
Designed as a stepping stone toward a full CI/CD pipeline (GitHub Actions → AWS → Jenkins → Kubernetes → Terraform)
Tech Stack
Language/Framework: Python, Flask
Containerization: Docker
Version Control/CI: Git, GitHub Actions (planned)
Cloud: AWS EC2 (planned)
OS/Terminal: Windows (Git Bash / MINGW64)
Getting Started
Prerequisites
Docker Desktop installed and running
Git
Clone the repo
bash
git clone https://github.com/anjalimv0169/todo-api.git
cd todo-api
Run with Docker

Pull the pre-built image from Docker Hub:

bash
docker pull anjalimv0169/todo-api
docker run -p 5000:5000 anjalimv0169/todo-api

Or build it locally:

bash
docker build -t todo-api .
docker run -p 5000:5000 todo-api

The API will be available at http://localhost:5000.

API Usage
Health check
bash
curl http://localhost:5000/health
Get all todos
bash
curl http://localhost:5000/todos
Add a todo
bash
curl -X POST http://localhost:5000/todos \
  -H "Content-Type: application/json" \
  -d '{"task": "Learn Docker"}'
Delete a todo
bash
curl -X DELETE http://localhost:5000/todos/1
Project Roadmap

This project is being built incrementally as a DevOps practice track:

✅ Build Flask API with basic CRUD endpoints
✅ Containerize with Docker, push image to Docker Hub
⬜ Set up CI pipeline with GitHub Actions
⬜ Deploy to AWS EC2
⬜ Add Jenkins pipeline
⬜ Explore Kubernetes basics
⬜ Provision infrastructure with Terraform
License

MIT
