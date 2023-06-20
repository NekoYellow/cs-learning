#ifndef HW_STR_H_
#define HW_STR_H_

#include "vec.h"
#include <cstring>
#include <algorithm>
#include <iostream>

class Str {
  public:
    friend std::istream& operator>>(std::istream&, Str&);
    Str(): data() {}
    Str(int n, char c): data(n, c) {}
    Str(const char *cp) {std::copy(cp, cp+std::strlen(cp), std::back_inserter(data));}
    template <typename In> Str(In b, In e) {std::copy(b, e, std::back_inserter(data));}
    Str& operator=(const Str& s) {data = s.data; return *this;}
    char& operator[](int i) {return data[i];}
    const char& operator[](int i) const {return data[i];}
    int size() const {return data.size();}
    Str& operator+=(const Str&);

  private:
    Vec<char> data;

};

Str operator+(const Str&, const Str&);

std::ostream& operator<<(std::ostream&, const Str&);

#endif