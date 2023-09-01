FROM python:3.11.4-slim

RUN apt-get update

# Flush python output immediately to the console (easier debugging)
ENV PYTHONUNBUFFERED 1

# Install all the python requirements
COPY ./requirements.txt /
RUN pip install --upgrade pip && pip install -r /requirements.txt

# Move local code to docker VM
COPY ./ /usr/local/src

# Set the directory where the code was moved to as working directory
WORKDIR /usr/local/src

# Make port (8080) available to the outside
EXPOSE 8080

# Run using streamlit
CMD ["sh", "-c", "PYTHONPATH=/usr/local/src streamlit run dev_ui/app.py --server.port 8080 --server.enableXsrfProtection false --logger.level debug"]

