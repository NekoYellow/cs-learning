#ifndef MY_QUEUE_H
#define MY_QUEUE_H

template <typename T>
class Queue {
public:
    Queue();
    Queue(const Queue&);
    ~Queue();
    Queue& operator=(const Queue&);
    bool enqueue(T);
    bool dequeue();
    T first() const;
    T last() const;
    int size() const { return sz; };
    bool empty() const { return sz == 0; }
    void output() const;

private:
    struct Node {
        T e;
        Node* nxt;
        Node() {}
        Node(T _e, Node* _n=nullptr): e(_e), nxt(_n) {}
    } *head, *tail;
    int sz;
    void copy_link(Node*);
    void free_link();
};

/* Implementation */

#include <stdexcept>
#include <iostream>

template <typename T>
Queue<T>::Queue(): head(nullptr), tail(nullptr), sz(0) {
    #ifdef TESTING
    std::cout << "Default constructor called." << std::endl;
    #endif
}

template <typename T>
Queue<T>::Queue(const Queue& that) {
    #ifdef TESTING
    std::cout << "Copy constructor called." << std::endl;
    #endif
    sz = that.sz;
    if (sz == 0) {
        head = tail = nullptr;
    } else {
        copy_link(that.head);
    }
}

template <typename T>
Queue<T>::~Queue() {
    #ifdef TESTING
    std::cout << "Destructor called." << std::endl;
    #endif
    free_link();
}

template <typename T>
Queue<T>& Queue<T>::operator=(const Queue& that) {
    #ifdef TESTING
    std::cout << "Operator=() called." << std::endl;
    #endif
    if (this == &that) return *this;
    free_link();
    sz = that.sz;
    copy_link(that.head);
    return *this;
}

template <typename T>
bool Queue<T>::enqueue(T e) {
    sz++;
    if (!head) {
        head = new Node(e);
        tail = head;
    } else {
        tail->nxt = new Node(e);
        tail = tail->nxt;
    }
    return true;
}

template <typename T>
bool Queue<T>::dequeue() {
    if (sz == 0) return false;
    sz--;
    if (sz == 0)  {
        delete head;
        head = tail = nullptr;
    } else {
        Node* tmp = head->nxt;
        delete head;
        head = tmp;
    }
    return true;
}

template <typename T>
T Queue<T>::first() const {
    if (sz == 0) throw std::domain_error("Head of an empty queue!");
    return head->e;
}

template <typename T>
T Queue<T>::last() const {
    if (sz == 0) throw std::domain_error("Tail of an empty queue!");
    return tail->e;
}

template <typename T>
void Queue<T>::output() const {
    if (empty()) {
        std::cout << "An empty queue\n";
        return;
    }
    Node* p = head;
    while (p != nullptr) {
        std::cout << p->e << ' ';
        p = p->nxt;
    }
    std::cout << '\n' << std::endl;
}

template <typename T>
void Queue<T>::copy_link(Node *o) {
    if (sz == 0) {
        head = tail = nullptr;
    } else {
        head = new Node(o->e);
        Node* p1 = head;
        Node* p2 = o->nxt;
        while (p2 != nullptr) {
            p1->nxt = new Node(p2->e);
            p1 = p1->nxt, p2 = p2->nxt;
        }
        tail = p1;
    }
}

template <typename T>
void Queue<T>::free_link() {
    while (head != nullptr) {
        Node* tmp = head->nxt;
        delete head;
        head = tmp;
    }
}

#endif