import bs4
from bs4 import BeautifulSoup
import requests
import pandas as pd
from datetime import datetime
url="https://www.bbc.co.uk/weather/2644688"
page = requests.get(url)
print(page)
soup =  BeautifulSoup(page.content,'html.parser')
print(soup)