#include "queue.h"
#include <iostream>

using namespace std;

int main() {
    Queue q;
    int iitv = 8, oitv = 25, lim = 50;
    int i = 0;
    cout << "\tQueuing Modeling:\n";
    for (int t = 0; ; t++) {
        if (t % iitv == 0) {
            q.enqueue(++i);
            cout << t << "s: the " << i << "-th in.\n";
        }
        if (q.size() == lim) {
            cout << "\tThis queue has reached " << lim << " people!\n";
            break;
        }
        if (t != 0 && t % oitv == 0) {
            cout << '\t' << t << "s: the " << i << "-th out.\n";
            q.dequeue();
        }
    }
    cout << "The first people in the queue enqueued at " << 8 * (q.first()-1) << "s.\n";
    cout << "The last people in the queue enqueued at " << 8 * (q.last()-1) << "s.\n";
    return 0;
}