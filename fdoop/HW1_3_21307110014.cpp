#include <iostream>
using std::cin; using std::cout;
using std::endl;

// arrays are learned in C programming
int days[] = {0,31,28,31,30,31,30,31,31,30,31,30,31}; // using index 1~12
// functions are learned in C programming
bool isLeap(int y) { // judge if year y is a leap year
    return (y%4==0 && y%100!=0) || y%400==0;
}

int main() {
    cout << "Enter the baby' s birthday: ";
    int y, m, d;
    cin >> y >> m >> d;
    d += 99;
    while (d > days[m] + (m==2 && isLeap(y))) {
        d -= days[m] + (m==2 && isLeap(y));
        if (++m > 12) m = 1, y++;
    }
    cout << "The baby' s 100-day is: ";
    cout << y << ' ' << m << ' ' << d << endl;
    return 0;
}