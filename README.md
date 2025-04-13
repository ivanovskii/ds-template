# Dockerized Python Data Science Environment

A ready-to-use Docker template for data science projects with Python, Jupyter Lab, and essential tools.

## 🐳 Features

- Python 3.9 slim base image
- Pre-configured Jupyter Lab environment
- Includes common system dependencies (git, htop, build-essential)
- Volume mounting for easy development
- TensorBoard port (6006) pre-configured

## 🚀 Quick Start

### Prerequisites
- Docker installed ([installation guide](https://docs.docker.com/get-docker/))
- Docker Compose (usually included with Docker Desktop)

### Running the environment

1. Clone this repository
```bash
git clone https://github.com/ivanovskii/ds-template
```

2. Build and start the container:
```bash
docker-compose up --build
```

3. Access Jupyter Lab at http://localhost:8888/lab