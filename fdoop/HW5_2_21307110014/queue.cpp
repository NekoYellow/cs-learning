#include "queue.h"
#include <stdexcept>
#include <type_traits>

using std::domain_error;

void Queue::enqueue(int e) {
    sz++;
    if (!head) {
        head = new Node(e);
        tail = head;
    } else {
        tail->nxt = new Node(e);
        tail = tail->nxt;
    }
}

void Queue::dequeue() {
    if (sz == 0) throw domain_error("Dequeue from an empty queue!");
    sz--;
    if (sz == 0)  {
        delete head;
        head = tail = nullptr;
    } else {
        Node* tmp = head->nxt;
        delete head;
        head = tmp;
    }
}

int Queue::first() {
    if (sz == 0) throw domain_error("Head of an empty queue!");
    return head->e;
}

int Queue::last() {
    if (sz == 0) throw domain_error("Tail of an empty queue!");
    return tail->e;
}

int Queue::size() {
    return sz;
}