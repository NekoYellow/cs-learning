#include "date.h"
#include <iostream>
#include <utility>
#include <stdexcept>

using std::istream;     using std::cout;
using std::endl;        using std::domain_error;
using std::swap;

void Date::check() {
    if (!valid_m()) throw domain_error("invalid month");
    if (!valid_d()) throw domain_error("invalid day");
}

Date::Date(int y_, int m_, int d_) : y(y_), m(m_), d(d_) {
    check();
}

Date::Date(istream& in) {
    in >> y >> m >> d;
    check();
}

void Date::print() {
    cout << y << "/" << m << "/" << d;
}

void Date::add_one_year() {
    ++y;
    if (d > nd(m)) d = nd(m);
}

void Date::add_one_month() {
    if (++m == 13) m = 1, ++y;
    if (d > nd(m)) d = nd(m);
}

void Date::add_one_day() {
    ++d;
    if (d > nd(m)) d = 1, add_one_month();
}

int compare(const Date &a, const Date &b) {
    if (a.year() == b.year()) {
        if (a.month() == b.month()) {
            if (a.day() == b.day()) return 0;
            return a.day() < b.day() ? -1 : 1;
        }
        return a.month() < b.month() ? -1 : 1;
    }
    return a.year() < b.year() ? -1 : 1;
}

int interval(Date a, Date b) {
    if (compare(a, b) > 0) swap(a, b); // let a earlier than b
    int cnt = 0;
    while (compare(a, b)) {
        a.add_one_day();
        ++cnt;
    }
    return cnt;
}