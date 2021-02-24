from pprint import pprint
import requests
import json
import sys
import os

r = requests.get('http://api.openweathermap.org/data/2.5/weather?q=Leeds&APPID=d6942ef68c1f871235cc674aaf71ff46&units=metric')

f = open("file.json", "w")
f.write(r.text)
f.close()
f = open("file.json", "r")
a = f.readline()
start = 'temp":'
end = ',"feels'
start2 = '"main":"'
end2 = '","descri'
start3 = '"description":"'
end3 = '","icon":'
start4 = '"humidity":'
end4 = ',"sea_level"'
start5 = '"wind":{"speed":'
end5 = ',"deg"'
start6 = ',"temp_max":'
end6 = ',"pressure'
start7 = '"temp_min":'
end7 = ',"temp_max"'
print("Humidity: " + (a.split(start4))[1].split(end4)[0] + "%")
print("Wind Speed: " + (a.split(start5))[1].split(end5)[0] + " Meters per second")
print("Temperature: " + (a.split(start))[1].split(end)[0] + "°C")
print("Temperature (Maximum throughout the day): " + (a.split(start6))[1].split(end6)[0] + "°C")
print("Temperature (Minimum throughout the day): " + (a.split(start7))[1].split(end7)[0] + "°C")
print("General Weather: " + (a.split(start2))[1].split(end2)[0])
print("Weather Description: " + (a.split(start3))[1].split(end3)[0])

f.close()
os.remove("file.json")