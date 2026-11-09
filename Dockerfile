ARG PYTHON_VERSION=3.11
FROM python:${PYTHON_VERSION}
WORKDIR /app
RUN python -m venv /opt/venv 
ENV PATH="/opt/venv/bin:$PATH"
RUN useradd -m appuser 

COPY requirements.txt . 
ENV APP_NAME=docker-practice
RUN pip install -r requirements.txt 
COPY app.py . 
RUN chown -R appuser:appuser /app
RUN apt-get update && apt-get install curl -y \
&& apt-get install git -y \
&& apt-get  install jq -y 
RUN curl --version && git --version 
CMD python3 app.py 
