import time
import sys
import requests
#target = 'target'

def get_time():
    now = int(round(time.time() * 1000))
    time_stamp = "[ "+time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(now / 1000))+" ] "
    return time_stamp

IP_ADDRESS = ('192.168.122.1',8081)

kv = {'cmd':sys.argv[1]} 
url="http://"+IP_ADDRESS[0]+":"+str(IP_ADDRESS[1])
headers={'User-Agent': 'User-Agent:Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36',
            'Connection': 'close'
        }
s = requests.session() 
res=requests.get(url,params=kv,headers=headers)
s.keep_alive = False
res.encoding = 'utf-8'
print(res.status_code, res.text)

