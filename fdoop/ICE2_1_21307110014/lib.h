#ifndef TEMP_LIB_B
#define TEMP_LIB_B
#include <string>
#include <vector>

struct city_temp {
    std::string name;
    int t;
    double dev;
};

double average(std::vector<city_temp> &cities);
void deviate(std::vector<city_temp> &cities, double avg);

#endif