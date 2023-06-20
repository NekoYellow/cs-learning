#ifndef MY_QUEUE_H
#define MY_QUEUE_H

class Queue {
public:
    Queue(): head(nullptr), tail(nullptr), sz(0) {}
    void enqueue(int);
    void dequeue();
    int first();
    int last();
    int size();
private:
    struct Node {
        int e;
        Node* nxt;
        Node() {}
        Node(int _e, Node* _n=nullptr): e(_e), nxt(_n) {}
    } *head, *tail;
    int sz;
};

#endif