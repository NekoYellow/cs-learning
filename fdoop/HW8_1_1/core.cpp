// source file for 'core'-related functions
#include "core.h"
#include "median.h"
#include <stdexcept>

using std::istream;  using std::vector;
using std::string;

double Core::grade() const {
    return 0.2*mi + 0.4*fi + 0.4*median(hw.begin(), hw.end());
}

istream& Core::read_common(istream& is) {
    is >> nm >> mi >> fi;
    return is;
}

istream& Core::read(istream& is) {
    // read and store the student's name and midterm and final exam grades
    read_common(is);
    read_hw(is, hw);  // read and store all the student's homework grades
    return is;
}

// read homework grades from an input stream into a 'vector<double>'
istream& read_hw(istream& in, vector<double>& hw) {
    if (in) {
        // get rid of previous contents
        hw.clear();
        // read homework grades
        double x;
        while (in >> x)
            hw.push_back(x);
        // clear the stream so that input will work for the next student
        in.clear();
    }
    return in;
}

bool compare(const Core& x, const Core& y) {
    return x.name() < y.name();
}

bool compare_Core_ptrs(const Core* p1, const Core* p2) {
    return compare(*p1, *p2);
}