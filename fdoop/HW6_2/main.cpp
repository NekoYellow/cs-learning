#define TESTING
#include "queue.h"

using namespace std;

int main() {
    Queue<int> q;
    int iitv = 8, oitv = 25, lim = 50;
    int i = 0;
    cout << "\tQueuing Modeling:\n";
    for (int t = 0; ; t++) {
        if (t % iitv == 0) {
            q.enqueue(t);
            cout << t << "s: the " << q.last()/iitv + 1 << "-th in.\n";
        }
        if (q.size() == lim) {
            cout << "\tThis queue has reached " << lim << " people!\n";
            break;
        }
        if (t != 0 && t % oitv == 0) {
            cout << '\t' << t << "s: the " << q.first()/iitv + 1 << "-th out.\n";
            q.dequeue();
        }
    }
    cout << "The first people in the queue enqueued at " << q.first() << "s.\n";
    cout << "The last people in the queue enqueued at " << q.last() << "s.\n";

    Queue<int> q1(q), q2;
    q1.output();
    q2 = q1;
    q2.output();

    return 0;
}