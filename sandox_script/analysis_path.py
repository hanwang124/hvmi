from asyncio import subprocess
import filecmp
import json
import os
import re
import subprocess
import fcntl


import signal
import hashlib
import time
from unittest.mock import patch

cmd_start_hvmi = 'sudo LD_LIBRARY_PATH=/usr/local/lib /usr/local/bin/hvmid --start'
cmd_logfile = 'journalctl -t hvmid -f > /home/huawei/code/log.txt'
cmd_restore_snap = 'python3 /home/huawei/code/client.py opening'
cmd_close_snap = 'python3 /home/huawei/code/client.py close'
cmd_kill_hvmi = 'sudo LD_LIBRARY_PATH=/usr/local/lib /usr/local/bin/hvmid --kill'




def get_file_md5(file_path):
    with open(file_path, 'rb') as f:
        md5obj = hashlib.md5()
        md5obj.update(f.read())
        _hash = md5obj.hexdigest()
    return str(_hash).upper()

def get_file_sha1(file_path):
    with open(file_path, 'rb') as f:
        sha1obj = hashlib.sha1()
        sha1obj.update(f.read())
        _hash = sha1obj.hexdigest()
    return str(_hash).upper()

def get_file_sha256(file_path):
    with open(file_path, 'rb') as f:
        sha256obj = hashlib.sha256()
        sha256obj.update(f.read())
        _hash = sha256obj.hexdigest()
    return str(_hash).upper()
def get_time():
    now = int(round(time.time() * 1000))
    time_stamp = "[ "+time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(now / 1000))+" ] "
    return time_stamp

def time2str(curtime):
    now = int(round(curtime * 1000))
    time_stamp = "[ "+time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(now / 1000))+" ] "
    return time_stamp

def nonBlockReadline(output):
    fd = output.fileno()
    fl = fcntl.fcntl(fd, fcntl.F_GETFL)
    fcntl.fcntl(fd, fcntl.F_SETFL, fl | os.O_NONBLOCK)
    try:
        return output.readline()
    except:
        return ''

# 避免阻塞
def non_block_read(output):
    fd = output.fileno()
    fl = fcntl.fcntl(fd, fcntl.F_GETFL)
    fcntl.fcntl(fd, fcntl.F_SETFL, fl | os.O_NONBLOCK)
    try:
        return output.read()
    except:
        return ""

def analysis_path(path):
    file_list = [f for f in os.listdir(path) if os.path.isfile(os.path.join(path, f))]
    for file in file_list:
        time_start = time.time()
        print(time2str(time_start)+file+' begin')
        file_md5 = get_file_md5(os.path.join(path, file))
        report_path = os.path.join(REPORT_DIR,file+'_'+file_md5+'_'+time2str(time_start)+'.txt')

        os.system(cmd_kill_hvmi)
        
        
        cmd_copy_sample = 'cp -f '+ os.path.join(path, file) +" "+INJECT_FILE
        os.system(cmd_copy_sample)

        #cmd2 = 'journalctl -t hvmid -f > '+report_path
        cmd_log = 'journalctl -t hvmid -f'
        p2 = subprocess.Popen(cmd_log,stdout=subprocess.PIPE,stderr=subprocess.PIPE,shell=True,close_fds=True,preexec_fn=os.setsid)

        
        os.system(cmd_start_hvmi)

        #time.sleep(2)
        os.system(cmd_restore_snap)
        
        
        #print(p2.stdout)
        #line = p2.communicate()
        #line = p2.stdout.readline()
        ready_flag = False
        run_flag = False


        # 当程序未运行结束时输出
        while p2.poll() is None:
            out = non_block_read(p2.stdout)
            if out != None:
                #outstr = out.decode('utf8')
                outstr = out
                with open(report_path, "ab") as f:
                    f.write(outstr)

                if  ready_flag is False and b"Found domain" in outstr:
                    ready_flag = True
                    time_hvmi_start = time.time()
                if run_flag is False and b"process huaweiSandbox01" in outstr:
                    run_flag = True
                    time_sample_run = time.time()
                if run_flag and (b'[AGENT-TERMINATED]' in outstr):
                    break

            if run_flag and (time.time() - time_sample_run) > TIME_OUT:
                break
            if time.time() - time_start > 3*TIME_OUT:
                break

        os.system(cmd_close_snap)
        
        os.killpg(p2.pid,signal.SIGUSR1)# 强制关闭进程
        
        cmd_remove_sample = 'rm -f '+INJECT_FILE
        os.system(cmd_remove_sample)

        #time.sleep(5)
        time_end = time.time()
        print(time2str(time_end)+' end')
        print('total runtime:',time_end-time_start)
        print('hvmi runtime:',time_end-time_hvmi_start)
        print('sample runtime:',time_end-time_sample_run)
        

    os.system(cmd_kill_hvmi)

if __name__ =="__main__":
    SAMPLES_PATH = "/home/huawei/samples"
    REPORT_DIR = "/home/huawei/code/report"
    INJECT_FILE = "/home/huawei/code/tmp/main"
    TIME_OUT = 5 # 这个值设置的比较低的时候会触发bug
    analysis_path(SAMPLES_PATH)
    
