#include <algorithm>
#include <iomanip>
#include <ios>
#include <iostream>
#include <fstream>
#include <stdexcept>
#include <string>
#include <vector>
#include <random>
#include "core.h"
#include "grad.h"
#include "median.h"

using std::cin;             using std::setprecision;
using std::cout;            using std::sort;
using std::domain_error;    using std::streamsize;
using std::endl;            using std::string;
using std::max;             using std::vector;
using std::ifstream;        using std::ofstream;

int main() {
    vector<Core*> students;
    Core* record;
    char ch;
    string::size_type maxlen = 0; // the length of the longest name

    ifstream fin("grades2");

    while (fin >> ch) {
        if (ch == 'U') record = new Core;
        else record = new Grad;
        record->read(fin);
        maxlen = max(maxlen, record->name().size());
        students.push_back(record);
    }

    // alphabetize the student records
    sort(students.begin(), students.end(), compare_Core_ptrs);

    // write the names and grades
    for (vector<Core>::size_type i = 0;
         i != students.size(); ++i) {

        // write the name, padded on the right to 'maxlen+1' characters
        cout << students[i]->name()
             << string(maxlen + 1 - students[i]->name().size(), ' ');

        // compute and write the grade
        try {
            cout << students[i]->grade();
        } catch (domain_error e) {
            cout << "student has done no homework";
        }
        cout << endl;
    }

    return 0;
}

