#include <iostream>
#include "date.h"

using std::cin;     using std::cout;
using std::endl;    using std::domain_error;

int main() {
    cout << "Input 2 dates (yyyy mm dd):" << endl;
    try {
        Date d1(cin), d2(cin);
        cout << "Date 1: "; d1.print(); cout << endl;
        cout << "Date 2: "; d2.print(); cout << endl;
        cout << "Days between the 2 dates: " << interval(d1, d2) << endl;
        Date t1 = d1; t1.add_one_day();
        cout << "Date 1 after adding 1 day: "; t1.print(); cout << endl;
        Date t2 = d1; t2.add_one_month();
        cout << "Date 1 after adding 1 month: "; t2.print(); cout << endl;
        Date t3 = d1; t3.add_one_year();
        cout << "Date 1 after adding 1 year: "; t3.print(); cout << endl;
    } catch (domain_error e) {
        cout << e.what() << endl;
    }
    return 0;
}