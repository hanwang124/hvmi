import requests
import json
import os
import hashlib
import time
def pretty_print(data):
    out = json.dumps(data, sort_keys=False, indent=4, separators=(',', ':'))
    print(out)
def get_file_md5(file_path):
    with open(file_path, 'rb') as f:
        md5obj = hashlib.md5()
        md5obj.update(f.read())
        _hash = md5obj.hexdigest()
    return str(_hash).upper()


def uploadfile(srvUrl, path,name):
    try:
        headers={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36',
                'Connection': 'close',   
        }
        data={"filemd5":get_file_md5(path),'name':name}
        with open(path, "rb") as conf:
            upFile = {
                'file': conf
            }
            s = requests.session()
            resp = requests.post(url=srvUrl,data=data,files=upFile,headers=headers)
            s.keep_alive = False
            print(resp.status_code)
            return resp.text=='good'
    except Exception as ex:
        print(ex)
        

def Requestrun(srvUrl,path):
    kv = {'run': path}
    headers = {'User-Agent': 'User-Agent:Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36',
               'Connection': 'close'
               }
    s = requests.session()
    res = requests.get(srvUrl, params=kv, headers=headers)
    s.keep_alive = False
    res.encoding = 'utf-8'
    print(res.status_code)
    print(res.text)
    
def Requestbacknetwork(ip,path):
    IP_ADDRESS = (ip, 8081)
    srvUrl = "http://"+IP_ADDRESS[0]+":"+str(IP_ADDRESS[1])
    kv = {'run': 'stopnetwork'}
    headers = {'User-Agent': 'User-Agent:Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36',
               'Connection': 'close'
               }
    res=requests.get(srvUrl,params=kv,headers=headers)
    with open(path,'wb') as f:			
        for chunk in res.iter_content(1024):	#防止文件过大，以1024为单位一段段写入
            f.write(chunk)	
    newmd5 = get_file_md5(path)
    header = res.headers
    md5 = header.get("md5")
    return md5==newmd5

def Request(host_ip,parm,vm):
    IP_ADDRESS = (host_ip, 8081)
    kv = {'cmd': parm,'vm':vm}
    url = "http://"+IP_ADDRESS[0]+":"+str(IP_ADDRESS[1])
    headers = {'User-Agent': 'User-Agent:Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36',
               'Connection': 'close'
               }
    s = requests.session()
    res = requests.get(url, params=kv, headers=headers)
    s.keep_alive = False
    res.encoding = 'utf-8'
    print(res.status_code)
    print(res.text)
