
import os
import json
import subprocess
import signal
import time
import re
import fcntl
import hashlib
import Client
host_ip = ''
target_ip = ''
Target = ''
network = ''
main = ''
parameter = ''
tmppath = ''
report = ''
sample = ''
saveSample = ''
timeout = 180

def get_time():
    now = int(round(time.time() * 1000))
    time_stamp = "[ "+time.strftime('%Y-%m-%d %H:%M:%S',
                                    time.localtime(now / 1000))+" ] "
    return time_stamp

def getConfig(): # 读取配置文件信息
    global target_ip,Target,network,main,parameter,report,sample,saveSample,timeout,host_ip
    try:
        with open("config.json", 'r') as load_f:
            data=json.load(load_f)
            host_ip=data['host_ip']
            target_ip=data['target_ip']
            Target=data['Target']
            network=data['network']
            main=data['main']
            parameter=data['parameter']
            report=data['report']
            sample=data['sample']
            main=data['main']
            saveSample=data['saveSample']
            timeout =data['timeout']
            load_f.close()
    except Exception as e:
        time_stamp = get_time()
        print(time_stamp+"Config.json file does not exist!")
        print(e)
        exit(1)

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


def Close(p2,name,file_md5):
    if file_md5!="":
        now = int(round(time.time() * 1000))
        time_stamp1 = time.strftime('_%Y-%m-%d_%H:%M:%S',time.localtime(now / 1000))
        try:
            res = Client.Requestbacknetwork(target_ip,network+name+"_"+file_md5+time_stamp1+".pcap")
        except Exception as r:
            print(r)
            Client.Request(host_ip,'close',Target)
            time_stamp = get_time()
            print(time_stamp+'end')
            os.killpg(p2.pid, signal.SIGUSR1)
            print(time_stamp+'requst send back network fail')
            return
        if res:
            time_stamp = get_time()
            print(time_stamp+'send back network success')
        else:
            time_stamp = get_time()
            print(time_stamp+'send back network fail')
    Client.Request(host_ip,'close',Target)
    time_stamp = get_time()
    print(time_stamp+'end')
    os.killpg(p2.pid, signal.SIGUSR1)


def writefile(p2, path):
    start_time = time.time()
    if os.path.exists(path):
        os.system("rm "+path)
    f = open(path, "bw")
    Flag1 = False
    Flag2 = False
    while True:
        outstr = non_block_read(p2.stdout)
        if outstr != None:
            f.write(outstr)
            f.flush()
            if Flag1 == False:
                if b'function entry_SYSCALL_64_trampoline' in outstr:
                    run_time = time.time()
                    Flag1 = True
            if Flag2 == False:
                if b'sh -c /home/huawei/Desktop' in outstr:
                    Flag2 = True
            if Flag1 and (b'[AGENT-TERMINATED]' in outstr):
                f.close()
                return 'yes'

        if Flag1:
            if (Flag2 == False) and (time.time()-run_time > 20):
                f.close()
                return 'no'
        if time.time() - start_time > timeout:
            f.close()
            return 'yes'

def run(ip,samplepath,isRename,parameterPath,mainPath):
    time_stamp = get_time()
    file_md5 = get_file_md5(samplepath)
    print(time_stamp+'open') 
    print(time_stamp+samplepath+" "+file_md5 + " " + parameterPath +' begin')
    Client.Request(host_ip,'opening',Target)
    IP_ADDRESS = (ip, 8081)
    url = "http://"+IP_ADDRESS[0]+":"+str(IP_ADDRESS[1])
    # 上传文件
    time_stamp = get_time()
    print(time_stamp+"send sample!")
    if isRename: 
        ret1 = Client.uploadfile(url,samplepath,os.path.basename(samplepath))
    else:
        ret1 = Client.uploadfile(url,samplepath,'file')
    if ret1==True:
        time_stamp = get_time()
        print(time_stamp+"send success sample!")
        time_stamp = get_time()
        print(time_stamp+"send parameter!")
        
        ret2 = Client.uploadfile(url,parameterPath,'parameter')
        if ret2==True:
            time_stamp = get_time()
            print(time_stamp+"send success parameter!")
            time_stamp = get_time()
            print(time_stamp+"send main!")
            #e3df5464-bdf5-9d9b-d463-5cfe959f5687
            ret3 = Client.uploadfile(url,mainPath,'e3df5464bdf59d')
            if ret3==True:
                time_stamp = get_time()
                print(time_stamp+"send success main!")
                Client.Requestrun(url,'network')
                Client.Requestrun(url,'/home/huawei/Desktop/e3df5464bdf59d')
                time_stamp = get_time()
                print(time_stamp+"run sample!")
                return True
        return False
    else:
        time_stamp = get_time()
        print(time_stamp+"send fail sample!")
        return False
    
    
def Solve():
    try:
        Client.Request(host_ip,'close','target')
    except:
        print("server.py not run")
        return
    time.sleep(5)
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
                    flag=0
                    for root, dirs, files in os.walk(parameter):
                        for name1 in files:
                            if name in name1:
                                flag=1
                                now = int(round(time.time() * 1000))
                                time_stamp1 = time.strftime('_%Y-%m-%d_%H:%M:%S',time.localtime(now / 1000))
                                path = report + name +'_'+ file_md5 + time_stamp1 + '.txt'
                                # pcappath = report + file_md5 + '.cap'
                                cmd2 = 'journalctl -a -t hvmid -f'
                                p2 = subprocess.Popen(cmd2, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                                                    shell=True, close_fds=True, preexec_fn=os.setsid)
                                parameterpath = os.path.join(root, name1)
                                
                                ret0 = run(target_ip,samplepath,True,parameterpath,main)
                                if ret0!=True:
                                    time_stamp = get_time()
                                    print(time_stamp+"use parameter.txt")
                                    Close(p2,name,"")
                                    time_stamp = get_time()
                                    print(time_stamp + " upload file error")
                                else:
                                    writefile(p2, path)
                                    Close(p2,name,file_md5)
                                time.sleep(5)
                    if flag==0:
                        now = int(round(time.time() * 1000))
                        time_stamp1 = time.strftime('_%Y-%m-%d_%H:%M:%S',time.localtime(now / 1000))
                        path = report + name +'_'+ file_md5 + time_stamp1 + '.txt'
                        cmd2 = 'journalctl -a -t hvmid -f'
                        p2 = subprocess.Popen(cmd2, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                                            shell=True, close_fds=True, preexec_fn=os.setsid)
                        parameterpath = parameter + 'default.txt'
                        parameterpath = os.path.join(root, name1)
                        ret0 = run(target_ip,samplepath,False,parameterpath,main)
                        if ret0!=True:
                            time_stamp = get_time()
                            print(time_stamp+"use parameter.txt")
                            Close(p2,name,"")
                            time_stamp = get_time()
                            print(time_stamp + " upload file error")
                        else:
                            res = writefile(p2, path)
                            print(res)
                            Close(p2,name,file_md5)
                        time.sleep(5)
                    cmd9 = 'mv -f ' + samplepath + ' ' +saveSample
                    # os.system(cmd9)
                    
        num = 10
        time.sleep(num)
        time_stamp = get_time()
        print(time_stamp+'sleep '+ str(num))


if __name__ == "__main__":
    getConfig()
    try:
        Solve()
    except Exception as r:
        print(r)
        Client.Request(host_ip,'close',Target)
        
