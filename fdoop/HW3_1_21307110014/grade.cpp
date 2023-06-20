#include"median.h"
#include"Student_info.h"
#include"grade.h"
#include<stdexcept>
#include<vector>
using std::domain_error;
using std::vector;

inline double grade(double midterm, double final, double hw) {
    return 0.2*midterm + 0.4*final + 0.4*hw;
}

double grade(double midterm, double final, const std::vector<double> &hws) {
    return grade(midterm, final, median(hws));
}

double grade(const StuInfo &stu) {
    return grade(stu.midterm, stu.final, stu.hws);
}