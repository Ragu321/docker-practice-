ARG PYTHON_VERSION=3.11
FROM python:${PYTHON_VERSION}
ARG 
WORKDIR /app
COPY requirements.txt . 
ENV APP_NAME=docker-practice
RUN pip install -r requirements.txt 
COPY app.py . 
CMD python3 app.py 
