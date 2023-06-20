#ifndef FUNCTION_H
#define FUNCTION_H

#include <iostream>
#include <cstdlib>
#include <algorithm>
using std::cout;
using std::endl;

namespace MY {
    template<class V, class T>
    T accumulate(V begin, V end, T t) {
        for (; begin != end; ++begin) {
            t += *begin;
        }
        return t;
    }

    template<class V, class T>
    V max_element(V& begin, V& end) {
        V mx = begin;
        for (; begin != end; ++begin) {
            if (*mx < *begin) mx = begin;
        }
        return mx;
    }

    template<class V, class T>
    V min_element(V& begin, V& end) {
        V mn = begin;
        for (; begin != end; ++begin) {
            if (*mn > *begin) mn = begin;
        }
        return mn;
    }

    template <class C>
    void print(C c) {
        for (typename C::iterator it = c.begin(); it != c.end(); ++it) {
            cout << *it << " ";
        }
        cout << endl;
    }

};

#endif
