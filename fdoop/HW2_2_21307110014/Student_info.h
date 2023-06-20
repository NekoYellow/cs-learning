#ifndef STUDENT_INFO
#define STUDENT_INFO

#include <vector>
#include <string>

struct StuInfo {
    std::string name;
    double midterm, final;
    std::vector<double> hws;
    double total;
};
bool cmp(const StuInfo &a, const StuInfo &b);

#endif