#ifndef GUARD_H
#define GUARD_H

#include "Student_info.h"

inline double grade(double midterm, double final, double hw);
double grade(double midterm, double final, const std::vector<double> &hws);
double grade(const StuInfo &stu);

#endif