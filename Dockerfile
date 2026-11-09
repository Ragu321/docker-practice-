ARG PYTHON_VERSION=3.11
FROM python:${PYTHON_VERSION}
WORKDIR /app
RUN python -m venv /opt/venv 
COPY requirements.txt . 
ENV APP_NAME=docker-practice
RUN pip install -r requirements.txt 
RUN apt-get update && apt-get install curl -y \
&& apt-get install git -y \
&& apt-get  install jq -y 

COPY app.py . 
CMD python3 app.py 
