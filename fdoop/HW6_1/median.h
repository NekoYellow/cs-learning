#ifndef GUARD_median_h
#define GUARD_median_h

// 'median.h'
#include <stdexcept>
#include <algorithm>
#include <type_traits>
#include "vec.h"

template <typename IT>
double median(IT begin, IT end) {
    Vec<typename std::iterator_traits<IT>::value_type> a;
    for (; begin != end; ++begin) {
        a.push_back(*begin);
    }
    if (a.empty()) throw std::domain_error("median of an empty vector");
    std::sort(a.begin(), a.end());
    return a.size()%2 ? a[a.size()/2] : (a[a.size()/2-1] + a[a.size()/2])/2.;
}

#endif

