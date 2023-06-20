#include <iostream>
#include <string>
using std::cin; using std::cout;
using std::endl; using std::string;

// functions are learned in C programming
void printSigns(char c, int n) {
    for (int i = 0; i < n; i++) {
        cout << c;
    }
}

int main() {
    string s;
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
            printSigns('*', s.size() + b*2);
        } else {
            printSigns(' ', b);
            if (i == b+1) { // middle line
                cout << s;
            } else {
                printSigns(' ', s.size());
            }
            printSigns(' ', b);
        }
        cout << '*' << endl;
    }

    return 0;
}