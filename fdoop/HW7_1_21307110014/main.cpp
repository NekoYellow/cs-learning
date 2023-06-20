#include "str.h"
#include <iostream>
using std::cin; using std::cout;
using std::endl;

int main() {
    Str s;
    cout << "Please enter your first name: ";
    cin >> s;
    s = "hello " + s + " !"; // construct the greeting
    int b;
    cout << "Please enter the number of the blanks surrounding the greeting: ";
    cin >> b;
    cout << endl;

    int n = b*2 + 3; // number of lines
    for (int i = 0; i < n; i++) {
        cout << '*';
        if (i == 0 || i+1 == n) { // first/last line
            cout << Str(s.size() + b*2, '*');
        } else {
            cout << Str(b, ' ');
            if (i == b+1) { // middle line
                cout << s;
            } else {
                cout << Str(s.size(), ' ');
            }
            cout << Str(b, ' ');
        }
        cout << '*' << endl;
    }

    cout << "Print greeting in chars:" << endl;
    for (int i = 0; i < s.size(); i++) {
        cout << s[i] << " \n"[i == s.size()-1];
    }

    return 0;
}