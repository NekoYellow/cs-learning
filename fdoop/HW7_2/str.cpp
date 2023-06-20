#include "str.h"
#include <utility>

std::istream& operator>>(std::istream& is, Str& s) {
    s.data.clear();
    char c;
    while (is.get(c) && isspace(c));
    if (is) {
        do s.data.push_back(c);
        while (is.get(c) && !isspace(c));
        if (is) is.unget();
    }
    return is;
}

std::ostream& operator<<(std::ostream& os, const Str& s) {
    for (int i = 0; i < s.size(); i++) os << s[i];
    return os;
}

Str& Str::operator+=(const Str& s) {
    std::copy(s.data.begin(), s.data.end(), std::back_inserter(data));
    return *this;
}

Str operator+(const Str& s, const Str& t) {
    Str r = s;
    r += t;
    return r;
}

bool operator==(const Str& s, const Str& t) {
    if (s.size() != t.size()) return false;
    for (int i = 0; i < s.size(); i++) {
        if (s[i] != t[i]) return false;
    }
    return true;
}

bool operator<(const Str& s, const Str& t) {
    int n = std::min(s.size(), t.size());
    for (int i = 0; i < n; i++) {
        if (s[i] == t[i]) continue;
        return s[i] < t[i];
    }
    return s.size() < t.size();
}
