# Базовый образ Python
FROM python:3.9-slim

# Установка системных зависимостей:
RUN apt-get update && apt-get install -y \
    && apt-get install -y htop git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Установка зависимостей Python
COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install -r requirements.txt --no-cache-dir

# Рабочая директория
WORKDIR /app

# Копирование исходного кода
COPY . /app

# Запуск Jupyter Lab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]