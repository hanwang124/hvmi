#include<stdio.h>
#include<stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main(){

    pid_t pid;

    //打印当前进程的进程号和Begin!
    printf("[%d]:Begin!\n",getpid());

    pid = fork();

    if(pid < 0){
        printf("Create Fail\n");
        exit(1);
    }else if (pid == 0)
    {
        //打印子进程的进程号和Child is working
        printf("[%d]:Child is working!\n",getpid());
    }else{
        //打印子进程的进程号和Parent  is working
        printf("[%d]:Parent is working!\n",getpid());
    }
    

    printf("[%d]:End!\n",getpid());

    exit(0);
}