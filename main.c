#include <stdio.h>
#include <string.h>
int main(){
    char str[100];
    FILE *fp;
    system("chmod 777 /parameter");
    system("chmod +x /file");
    fp = fopen("/parameter", "r");
    fgets(str, 100, fp);
    system(str);
    return  0;
}