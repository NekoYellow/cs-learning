#include <iostream>
#include <string>
using std::cin; using std::cout;
using std::endl; using std::string;

int main() {
    cout << "Enter 3 English words: ";
    string a, b, c, t;
    cin >> a >> b >> c;
    if (a > b) {
        t = a; a = b; b = t;
    }
    if (a > c) {
        t = a; a = c; c = t;
    }
    if (b > c) {
        t = b; b = c; c = t;
    }
    cout << a << ' ' << b << ' ' << c << endl;
    return 0;
}