
from enum import Flag
import json
import os
import re
import subprocess
import datetime
import mysql.connector
import requests
import signal
import time
import re
import json
import fcntl
import hashlib
mydb = mysql.connector.connect(
    host="192.168.123.1",
    user="root",
    passwd="123456",
    database="graduate",
    auth_plugin='mysql_native_password'
)


def get_file_md5(file_path):
    with open(file_path, 'rb') as f:
        md5obj = hashlib.md5()
        md5obj.update(f.read())
        _hash = md5obj.hexdigest()
    return str(_hash).upper()


def get_time():
    now = int(round(time.time() * 1000))
    time_stamp = "[ "+time.strftime('%Y-%m-%d %H:%M:%S',
                                    time.localtime(now / 1000))+" ] "
    return time_stamp


# 避免阻塞
def non_block_read(output):
    fd = output.fileno()
    fl = fcntl.fcntl(fd, fcntl.F_GETFL)
    fcntl.fcntl(fd, fcntl.F_SETFL, fl | os.O_NONBLOCK)
    try:
        return output.read()
    except:
        return ""


def get_time():
    now = int(round(time.time() * 1000))
    time_stamp = "[ "+time.strftime('%Y-%m-%d %H:%M:%S',
                                    time.localtime(now / 1000))+" ] "
    return time_stamp


def Request(parm):
    IP_ADDRESS = ('192.168.123.1', 8081)

    kv = {'cmd': parm}
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


def Close(p2):
    Request('close')
    time_stamp = get_time()
    print(time_stamp+'end')
    os.killpg(p2.pid, signal.SIGUSR1)
    # os.killpg(p4.pid,signal.SIGUSR1)


def writefile(p2, path):
    start_time = time.time()
    if os.path.exists(path):
        os.system("rm "+path)
    f = open(path, "bw")
    Flag1 = False
    ready_flag = False
    Flag2 = False
    while True:
        outstr = non_block_read(p2.stdout)
        if outstr != None:
            f.write(outstr)
            if Flag1 == False:
                if b'goodinjectcmd!' in outstr:
                    run_time = time.time()
                    Flag1 = True
            if Flag2 == False:
                if b'Scan request' in outstr:
                    Flag2 = True
            if ready_flag == False:
                if b'Waiting for events' in outstr:
                    ready_flag = True
            if ready_flag and (b'[AGENT-TERMINATED]' in outstr):
                f.close()
                return 'yes'

        if Flag1:
            if (Flag2 == False) and (time.time()-run_time > 20):
                f.close()
                return 'no'
        if time.time() - start_time > timeout:
            f.close()
            return 'yes'


def solvelog(path,name):
    re1 = re.compile(r'(.*) huawei hvmid\[.*\]: \[98af69e3-91ef-4003-8bfb-f7a62f6fc157\] compiler_depend.ts : [0-9]* (.*)')
    f1 = open(solvereport+name,'w+')
    with open(path,'r') as f:
        s = f.readline()
        while 'Scan request for task' not in s:
            s = f.readline()
        while s:
            # if 'Scan request for task' in s:
            #     f1.write(s)
            tmp = re1.match(s)
            if tmp!=None:
                f1.write(tmp.group(1)+" "+tmp.group(2)+'\n')
            s = f.readline()
            
def Solve():
    try:
        Request('opening')
        Request('close')
    except:
        print("server.py not run")
        return
    cmd1 = 'echo 123456 | sudo -S LD_LIBRARY_PATH=/usr/local/lib /usr/local/bin/hvmid --start'
    cmd3 = 'echo 123456 | sudo -S LD_LIBRARY_PATH=/usr/local/lib /usr/local/bin/hvmid --kill'
    os.system(cmd3)
    os.system(cmd1)
    while True:
        for root, dirs, files in os.walk(sample):
            for name in files:
                samplepath = os.path.join(root, name)
                if os.access(samplepath,os.F_OK):
                    file_md5 = get_file_md5(samplepath)
                    cmd4 = 'cp '+samplepath+' '+tmppath
                    os.system(cmd4)
                    if os.access(parameterpath+file_md5+'.txt',os.F_OK):
                        f = open(parameterpath+file_md5+'.txt','r')
                    else:
                        f = open(parameterpath+'default.txt','r')
                    s = f.readline()
                    while s:
                        s = s.strip()
                        with open("./tmp/parameter",'w') as f1:
                            f1.write(s)
                        now = int(round(time.time() * 1000))
                        time_stamp1 = time.strftime('_%Y-%m-%d_%H:%M:%S',time.localtime(now / 1000))
                        path = report + name +'_'+ file_md5 + time_stamp1 + '.txt'
                        cmd2 = 'journalctl -t hvmid -f'
                        p2 = subprocess.Popen(cmd2, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                                            shell=True, close_fds=True, preexec_fn=os.setsid)
                        time_stamp = get_time()
                        print(time_stamp+name+" " + file_md5 +' begin')
                        print("#"+s+"#")
                        try:
                            Request('opening')
                        except:
                            print("server.py not run")
                            return
                        run = writefile(p2, path)
                        Close(p2)
                        time.sleep(3)
                        s = f.readline()
                    cmd8 = 'rm -f ' + tmppath
                    os.system(cmd8)
                    cmd9 = 'mv -f ' + samplepath + ' ' +savesamplepath
                    os.system(cmd9)
        time.sleep(5);
        time_stamp = get_time()
        print(time_stamp+'sleep')


if __name__ == "__main__":
    tmppath = '/home/huawei/code/tmp/file'
    report = '/home/huawei/code/report/'
    solvereport = '/home/huawei/code/solvereport/'
    sample = '/home/huawei/code/sample/'
    savesamplepath = '/home/huawei/code/saveSample/'
    parameterpath = '/home/huawei/code/parameter/'
    timeout = 180
    try:
        Solve()
    except Exception as r:
        Request('close')
        
