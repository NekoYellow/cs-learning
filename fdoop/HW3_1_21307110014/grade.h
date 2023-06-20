#ifndef GUARD_H
#define GUARD_H 
#include<vector>
#include<list> 
#include"Student_info.h"

inline double grade(double, double, double);
double grade(double, double, const std::vector<double>&);
double grade(const StuInfo&);

#endif