imports os 
import requests
app_name = os.getenv("APP_NAME")
print("Hello From Docker!")
print("Requests version:", requests.__version__)


