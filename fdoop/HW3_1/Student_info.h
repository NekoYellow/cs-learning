#ifndef STUDENT_INFO
#define STUDENT_INFO
#include<iostream>
#include<vector>
#include<string>

struct StuInfo {
    std::string name;
    std::vector<double> hws;
    double midterm;
    double final;
    double total;
};
bool operator==(const StuInfo&, const StuInfo&);
bool cmp(const StuInfo&, const StuInfo&);
std::istream& read(std::istream&, StuInfo&);
std::istream& read_hw(std::istream&, std::vector<double>&);

#endif
