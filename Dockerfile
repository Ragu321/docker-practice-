FROM python:3.11
WORKDIR /app
COPY requirments.txt . 
COPY app.py . 
CMD python3 app.py 
