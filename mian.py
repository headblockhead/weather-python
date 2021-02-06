from pprint import pprint
import requests
r = requests.get('http://api.openweathermap.org/data/2.5/weather?q=London&APPID=d6942ef68c1f871235cc674aaf71ff46')
pprint(r.json())