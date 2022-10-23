import urllib3

http = urllib3.PoolManager()

r = http.request('GET', 'http://127.0.0.1:8080/Jinx_Arcane.jpg')


