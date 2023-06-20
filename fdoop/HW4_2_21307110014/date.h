#ifndef DATE_H
#define DATE_H

#include <iostream>

static int days[13] = {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

class Date {
public:
    Date(): y(0), m(0), d(0) { }
    Date(int, int, int);
    Date(std::istream&);
    inline int year() const { return y; }
    inline int month() const { return m; }
    inline int day() const {return d; }
    void print();
    void add_one_year();
    void add_one_month();
    void add_one_day();
    inline bool isLeap() const { return (y%4==0 && y%100!=0) || y%400==0; }

private:
    int y, m, d;
    inline int nd(int m) const { return days[m] + (m==2 && isLeap()); }
    // inline bool valid_y() const { return true; }
    inline bool valid_m() const { return m > 0 && m < 13; }
    inline bool valid_d() const { return d > 0 && d <= nd(m); }
    void check();
};

int compare(const Date&, const Date&);
int interval(Date, Date);

#endif