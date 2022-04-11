
from asyncio import subprocess
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
    time_stamp = "[ "+time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(now / 1000))+" ] "
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
    
    
def solve(path,reportpath):
    res = []
    with open(path,'r') as f:
        ss = f.readline()
        while ss:
            if 'goodinjectcmd!' in ss:
                res = []
            elif ' sys_' in ss:
                re1 = re.compile(r'.*process (.*) \[(.*),(.*)\] sys_(.*?)[(](.*)[)] = (.*)')
                tmp = re1.match(ss)
                if tmp != None:
                    kv = {}
                    kv['tag'] = 'syscall'
                    kv['processNanme'] = tmp.group(1)
                    kv['pid'] = tmp.group(2)
                    kv['Tgid'] = tmp.group(3)
                    kv['syscallName'] = tmp.group(4)
                    args = tmp.group(5).split(',')
                    kv['argNum'] = len(args)
                    for i,arg in enumerate(args):
                        key = 'arg' + str(i)
                        kv[key] = arg
                    kv['return'] = tmp.group(6)
                    res.append(kv)
                else:
                    print(ss)
            elif '[ERROR]' in ss:
                pass
            elif '[THREAD][PROT]' in ss:
                re1 = re.compile(r'.*\[THREAD\]\[PROT\] (.*), \((.*)/(.*?),.*\)')
                tmp = re1.match(ss)
                if tmp != None:
                    kv = {}
                    kv['tag'] = 'THREAD'
                    kv['processNanme'] = tmp.group(1)
                    kv['pid'] = tmp.group(2)
                    kv['Tgid'] = tmp.group(3)
                    res.append(kv)
                else:
                    print(ss)
            elif '[FORK][PROT]' in ss:
                re1 = re.compile(r'.*\[FORK\]\[PROT\] (.*)\((.*)\), \((.*)/(.*?),.*\) \[from Process (.*) \((.*?),.*\)\]')
                tmp = re1.match(ss)
                if tmp != None:
                    kv = {}
                    kv['tag'] = 'FORK'
                    kv['toProcName'] = tmp.group(1)
                    kv['tocomm'] = tmp.group(2)
                    kv['topid'] = tmp.group(3)
                    kv['toTgid'] = tmp.group(4)
                    kv['fromProcName'] = tmp.group(5)
                    kv['frompid'] = tmp.group(6)
                    res.append(kv)
                else:
                    print(ss)
            elif '[EXIT]' in ss:
                re1 = re.compile(r'.*\[EXIT\] Process (.*) \((.*?),.*')
                tmp = re1.match(ss)
                if tmp != None:
                    kv = {}
                    kv['tag'] = 'EXIT'
                    kv['ProcName'] = tmp.group(1)
                    kv['pid'] = tmp.group(2)
                    res.append(kv)
                else:
                    print(ss)
            elif '[EXEC] Task' in ss:
                re1 = re.compile(r'.*\[EXEC\] Task \'(.*)\' has command line \'(.*)\'')
                tmp = re1.match(ss)
                if tmp != None:
                    kv = {}
                    kv['tag'] = 'EXEC Task'
                    kv['ProcName'] = tmp.group(1)
                    kv['Cmdline'] = tmp.group(2)
                    res.append(kv)
                else:
                    print(ss)
            elif '[EXEC] Process' in ss:
                re1 = re.compile(r'.*\[EXEC\] Process (.*) \((.*),.* exec to (.*)')
                tmp = re1.match(ss)
                if tmp != None:
                    kv = {}
                    kv['tag'] = 'EXEC Process'
                    kv['comm'] = tmp.group(1)
                    kv['pid'] = tmp.group(2)
                    kv['ProcName'] = tmp.group(3)
                    res.append(kv)
                else:
                    print(ss)
            elif '[PROC] Deactivated' in ss:
                re1 = re.compile(r'.*\[PROC\] Deactivated protection for process \'(.*)\' \((.*?).*')
                tmp = re1.match(ss)
                if tmp != None:
                    kv = {}
                    kv['tag'] = 'PROC'
                    kv['ProcName'] = tmp.group(1)
                    kv['pid'] = tmp.group(2)
                    res.append(kv)
                else:
                    print(ss)
            elif 'Scan request for task' in ss:
                re1 = re.compile(r'.*Scan request for task \'(.*)\' with PID (.*) using command line \'(.*)\'.*')
                tmp = re1.match(ss)
                if tmp != None:
                    kv = {}
                    kv['tag'] = 'Scan'
                    kv['comm'] = tmp.group(1)
                    kv['pid'] = tmp.group(2)
                    kv['Cmdline'] = tmp.group(3)
                    res.append(kv)
                else:
                    print(ss)
            else:
                pass
            ss = f.readline()
    with open(reportpath,'w') as f:
        f.write(json.dumps(res))


def get_time():
    now = int(round(time.time() * 1000))
    time_stamp = "[ "+time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(now / 1000))+" ] "
    return time_stamp


def Request(parm):
    IP_ADDRESS = ('192.168.123.1',8081)

    kv = {'cmd':parm} 
    url="http://"+IP_ADDRESS[0]+":"+str(IP_ADDRESS[1])
    headers={'User-Agent': 'User-Agent:Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36',
                'Connection': 'close'
            }
    s = requests.session() 
    res=requests.get(url,params=kv,headers=headers)
    s.keep_alive = False
    res.encoding = 'utf-8'
    print(res.status_code)
    print(res.text)



def Close(p2):
    Request('close')
    time_stamp = get_time()
    print(time_stamp+'end')
    os.killpg(p2.pid,signal.SIGUSR1)


def writefile(p2,path):
    start_time = time.time()
    if os.path.exists(path):
        os.system("rm "+path)
    f = open(path, "bw")
    Flag1 = False
    ready_flag = False
    
    while True:
        outstr = non_block_read(p2.stdout)
        if outstr != None:
            f.write(outstr)
            if Flag1==False:
                if b'goodinjectcmd!' in outstr:
                    run_time = time.time()
                    Flag1= True
            if ready_flag==False:
                if b'Waiting for events' in outstr:
                    ready_flag = True
            if ready_flag and (b'[AGENT-TERMINATED]' in outstr):
                f.close()
                return 'yes'
            
        if Flag1 and (time.time()-run_time>9):
            f.close()
            return 'no'
        if time.time() - start_time > timeout:
            f.close()
            return 'yes'
        
        
def Solve():
    cmd1 = 'sudo LD_LIBRARY_PATH=/usr/local/lib /usr/local/bin/hvmid --start'
    cmd3 = 'sudo LD_LIBRARY_PATH=/usr/local/lib /usr/local/bin/hvmid --kill'
    os.system(cmd3)
    os.system(cmd1)
    Request('opening')
    Request('close')
    mycursor = mydb.cursor()
    while True:
        mysql1 = "SELECT md5,path,train FROM local_storage where run='unknown'"
        mycursor.execute(mysql1)
        r1=mycursor.fetchall()
        if len(r1)==0:
            time_stamp = get_time()
            print(time_stamp+'sleepping.....')
            time.sleep(5)
        else:
            for it in r1:
                filepath = it[1]
                file_md5 = it[0]
                train = it[2]

                time_stamp = get_time()
                print(time_stamp+filepath)
                
                cmd7 = 'cp -f '+ filepath +" " + tmppath
                os.system(cmd7)

                if train=='malware':
                    path = malwareReport + file_md5+'.txt'
                else:
                    path = benignReport + file_md5 + '.txt'
                    
                cmd2 = 'journalctl -t hvmid -f'
                p2 = subprocess.Popen(cmd2,stdout=subprocess.PIPE,stderr=subprocess.PIPE,shell=True,close_fds=True,preexec_fn=os.setsid)
                
                time_stamp = get_time()
                print(time_stamp+'begin')
                Request('opening')
                
                run = writefile(p2,path)

                Close(p2)
                
                if run == 'no':
                    dt=datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
                    mysql2 ="update local_storage set create_time='%s',update_time='%s',run='no' where md5='%s'" %(dt,dt,file_md5)
                    mycursor.execute(mysql2)
                    mydb.commit()
                    os.system("rm "+path)
                else:
                    time.sleep(timeout-80)
                    Close(p2)
                    dt=datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
                    # solve(path,reportpath)
                    mysql2 ="update local_storage set create_time='%s',update_time='%s',run='yes',reportpath='%s' where md5='%s'" %(dt,dt,path,file_md5)
                    mycursor.execute(mysql2)
                    mydb.commit()
                        

                cmd8 = 'rm -f ' + tmppath
                os.system(cmd8)
                time.sleep(2)

if __name__ =="__main__":
    benignReport = '/home/huawei/code/benignReport/'
    malwareReport = '/home/huawei/code/malwareReport/'
    tmppath = '/home/huawei/code/tmp/main'
    timeout = 200
    Solve()
