FROM python:3.11.4-slim

RUN apt-get update

# Flush python output immediately to the console (easier debugging)
ENV PYTHONUNBUFFERED 1

# Install all the python requirements
COPY ./requirements.txt /
RUN pip install --upgrade pip && pip install -r /requirements.txt

# Additionally install uvicorn, this is needed for running FastAPI
RUN pip install uvicorn

# Move local code to docker VM
COPY ./ /usr/local/src

# Set the directory where the code was moved to as working directory
WORKDIR /usr/local/src

# Make port (8000) available to the outside
EXPOSE 8000

# Running through uvicorn is done inside the docker compose