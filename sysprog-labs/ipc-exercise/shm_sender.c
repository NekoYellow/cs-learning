#include <stdio.h>
#include <stdlib.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <semaphore.h>
#include <fcntl.h> // For O_CREAT, O_EXCL
#include <sys/stat.h> // For mode constants
#include <string.h>
#include <unistd.h>

#define SHM_KEY 2024
#define SEM_NAME "/my_semaphore"

struct shared_memory {
    char message[100];
};

int main() {
    int shmid;
    struct shared_memory *shm_ptr;
    sem_t *sem;

    // 创建共享内存
    shmid = shmget(SHM_KEY, sizeof(struct shared_memory), 0666 | IPC_CREAT);
    if (shmid == -1) {
        perror("shmget");
        exit(1);
    }

    // 连接共享内存
    shm_ptr = (struct shared_memory *)shmat(shmid, NULL, 0);
    if (shm_ptr == (struct shared_memory *)-1) {
        perror("shmat");
        exit(1);
    }

    // 创建并初始化命名信号量
    sem = sem_open(SEM_NAME, O_CREAT, 0666, 1);
    if (sem == SEM_FAILED) {
        perror("sem_open");
        exit(1);
    }

    // 准备消息
    char *message = "this is a message";
    sem_wait(sem); // 等待信号量
    strcpy(shm_ptr->message, message);
    sem_post(sem); // 释放信号量

    printf("Message written: %s\n", message);

    // 关闭信号量
    sem_close(sem);

    // 分离共享内存
    if (shmdt(shm_ptr) == -1) {
        perror("shmdt");
        exit(1);
    }

    return 0;
}
