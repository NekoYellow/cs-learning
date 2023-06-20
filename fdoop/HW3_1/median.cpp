#include<vector> 
#include<stdexcept>
#include<algorithm>
using std::vector;
using std::domain_error;
using std::sort;

#include "median.h"
#include <algorithm>
#include <stdexcept>

double median(std::vector<double> a) {
    int n = a.size();
    if (!n) {
        throw std::domain_error("median of an empty vector");
    }
    std::sort(a.begin(), a.end());
    int mid = n/2;
    return n%2 ? a[mid] : (a[mid-1]+a[mid])/2;
}