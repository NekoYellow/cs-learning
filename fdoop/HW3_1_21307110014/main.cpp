#include <algorithm>
#include <iomanip>
#include <ios>
#include <iostream>
#include <stdexcept>
#include <string>
#include <list>
#include "median.h"
#include "grade.h"
#include "Student_info.h"
#include "fails_list.h"
using namespace std;

int main() {
    list<StuInfo> students;
    StuInfo cur;
    int maxlen = 0;
    while (read(cin, cur)) {
        students.push_back(cur);
        maxlen = max(maxlen, (int)cur.name.size());
    }
    int rank = 1e9;
    for (list<StuInfo>::iterator it = students.begin(); it != students.end(); ++it) {
        try {
            it->total = grade(*it);
        } catch(domain_error) {
            it->total = 100+rank--;
        }
    }
    for (list<StuInfo>::iterator it = students.begin(); it != students.end(); ++it) {
        try {
            if (!it->hws.size()) throw domain_error("student has done no homework");
        } catch (domain_error e) {
            cout << it->name << string(maxlen+1-it->name.size(), ' ');
            cout << e.what() << endl;
        }
    }
    cout << '\n';
    list<StuInfo> fails = extract_fails(students);
    students.sort(cmp); fails.sort(cmp);
    cout << "Passing students:" << endl;
    for (list<StuInfo>::iterator it = students.begin(); it != students.end(); ++it) {
        if (!it->hws.size()) continue;
        cout << it->name << string(maxlen+1-it->name.size(), ' ');
        int prec = cout.precision();
        cout << setprecision(3) << it->total << setprecision(prec) << endl;
    }
    cout << '\n';
    cout << "Failing students:" << endl;
    for (list<StuInfo>::iterator it = fails.begin(); it != fails.end(); ++it) {
        if (!it->hws.size()) continue;
        cout << it->name << string(maxlen+1-it->name.size(), ' ');
        if (!it->hws.size()) throw domain_error("student has done no homework");
        int prec = cout.precision();
        cout << setprecision(3) << it->total << setprecision(prec) << endl;
    }

    return 0;
}
