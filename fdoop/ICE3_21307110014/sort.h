#ifndef SELECT_SORT_H
#define SELECT_SORT_H

#include <utility>
#include <iostream>

template <typename T>
void selectSort(T b, T e) {
    for (; b != e; ++b) {
        T mit = b;
        for (T it = b; it != e; ++it) {
            if (*it < *mit) mit = it;
        }
        std::swap(*b, *mit);
    }
}

template <typename C>
void print(C c) {
    for (typename C::iterator it = c.begin(); it != c.end(); ++it) {
        std::cout << *it << " ";
    }
    std::cout << std::endl;
}

#endif