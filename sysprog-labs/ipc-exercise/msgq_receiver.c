#include <stdio.h>
#include <stdlib.h>
#include <sys/ipc.h>
#include <sys/msg.h>
#include <string.h>

#define MSG_KEY 2024  // 消息队列的key值

// 消息结构
struct msg_buffer {
    long msg_type;
    char msg_text[100];
};

int main() {
    int msgid;
    struct msg_buffer message;

    // 获取消息队列
    msgid = msgget(MSG_KEY, 0666 | IPC_CREAT);
    if (msgid == -1) {
        perror("msgget");
        exit(1);
    }

    // 接收消息
    if (msgrcv(msgid, &message, sizeof(message.msg_text), 1, 0) == -1) {
        perror("msgrcv");
        exit(1);
    }

    // 输出接收到的消息
    printf("Message received: %s\n", message.msg_text);

    return 0;
}
