import os 
import requests
app_name = os.getenv("APP_NAME")
print("Hello From Docker!")
print("Application Name:",app_name)
print("Requests version:", requests.__version__)


