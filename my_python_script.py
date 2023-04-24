import requests

response = requests.get('http://localhost:8080/names')
print(response.json())
