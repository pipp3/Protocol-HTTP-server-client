import urllib3

http = urllib3.PoolManager()

r = http.request('GET', 'http://httpbin.org/robots.txt')
r.data

r = http.request(
    'POST',
    'http://httpbin.org/post',
    fields={'hello': 'world'}
)