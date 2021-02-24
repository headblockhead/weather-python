[1mdiff --git a/mian.py b/mian.py[m
[1mdeleted file mode 100644[m
[1mindex ca5ad1f..0000000[m
[1m--- a/mian.py[m
[1m+++ /dev/null[m
[36m@@ -1,37 +0,0 @@[m
[31m-from pprint import pprint[m
[31m-import requests[m
[31m-import json[m
[31m-import sys[m
[31m-import os[m
[31m-[m
[31m-r = requests.get('http://api.openweathermap.org/data/2.5/weather?q=Leeds&APPID={INSERT API KEY HERE}&units=metric')[m
[31m-[m
[31m-f = open("file.json", "w")[m
[31m-f.write(r.text)[m
[31m-f.close()[m
[31m-f = open("file.json", "r")[m
[31m-a = f.readline()[m
[31m-start = 'temp":'[m
[31m-end = ',"feels'[m
[31m-start2 = '"main":"'[m
[31m-end2 = '","descri'[m
[31m-start3 = '"description":"'[m
[31m-end3 = '","icon":'[m
[31m-start4 = '"humidity":'[m
[31m-end4 = ',"sea_level"'[m
[31m-start5 = '"wind":{"speed":'[m
[31m-end5 = ',"deg"'[m
[31m-start6 = ',"temp_max":'[m
[31m-end6 = ',"pressure'[m
[31m-start7 = '"temp_min":'[m
[31m-end7 = ',"temp_max"'[m
[31m-print("Humidity: " + (a.split(start4))[1].split(end4)[0] + "%")[m
[31m-print("Wind Speed: " + (a.split(start5))[1].split(end5)[0] + " Meters per second")[m
[31m-print("Temperature: " + (a.split(start))[1].split(end)[0] + "°C")[m
[31m-print("Temperature (Maximum throughout the day): " + (a.split(start6))[1].split(end6)[0] + "°C")[m
[31m-print("Temperature (Minimum throughout the day): " + (a.split(start7))[1].split(end7)[0] + "°C")[m
[31m-print("General Weather: " + (a.split(start2))[1].split(end2)[0])[m
[31m-print("Weather Description: " + (a.split(start3))[1].split(end3)[0])[m
[31m-[m
[31m-f.close()[m
[31m-os.remove("file.json")[m
\ No newline at end of file[m
