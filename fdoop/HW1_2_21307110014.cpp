#include <iostream>
using std::cin; using std::cout;
using std::endl;

int main() {
    int l;
    cout << "Enter the side length of a square: ";
    cin >> l;
    for (int i = 0; i < l; i++) {
        for (int j = 0; j < l; j++) {
            cout << "* ";
        }
        cout << endl;
    }

    int w;
    cout << "Enter the length and width of a rectangle: ";
    cin >> l >> w;
    for (int i = 0; i < w; i++) {
        for (int i = 0; i < l; i++) {
            cout << "* ";
        }
        cout << endl;
    }

    cout << "Enter the base length of an isosceles triangle (odd number): ";
    cin >> l;
    int i = l/2, j = 1;
    for (; i > -1; i--, j += 2) {
        for (int k = 0; k < i; k++) cout << "  ";
        for (int k = 0; k < j; k++) cout << "* ";
        cout << endl;
    }

    return 0;
}