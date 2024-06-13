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

    // 创建消息队列
    msgid = msgget(MSG_KEY, 0666 | IPC_CREAT);
    if (msgid == -1) {
        perror("msgget");
        exit(1);
    }

    // 准备消息
    message.msg_type = 1;  // 消息类型，非0
    strcpy(message.msg_text, "this is a message");

    // 发送消息
    if (msgsnd(msgid, &message, sizeof(message.msg_text), 0) == -1) {
        perror("msgsnd");
        exit(1);
    }

    printf("Message sent: %s\n", message.msg_text);

    return 0;
}
