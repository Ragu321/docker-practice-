FROM python:3.11
WORKDIR /app
COPY requirments.txt . 
RUN 
COPY app.py . 
RUN python3 app.py 
