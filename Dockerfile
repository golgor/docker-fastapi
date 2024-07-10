# 
FROM python:3.12

# 
WORKDIR /app

# 
COPY ./requirements.lock /app/requirements.lock

# 
RUN pip install --no-cache-dir --upgrade -r /app/requirements.lock

# 
COPY ./src/docker_fastapi /app
COPY ./database /database

# 
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
