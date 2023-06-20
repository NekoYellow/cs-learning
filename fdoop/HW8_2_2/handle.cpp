#include "handle.h"

Handle& Handle::operator=(const Handle& h) {
    if (&h != this) {
        delete ptr;
        if (h.ptr) ptr = h.ptr->clone();
    }
    return *this;
}

std::ifstream& Handle::read(std::ifstream& is) {
    delete ptr;
    char c;
    is >> c;
    if (!is) return is;
    if (c == 'T') ptr = new Triangle(is);
    else if (c == 'R') ptr = new Rectangle(is);
    else if (c == 'C') ptr = new Circle(is);
    return is;
}

bool compare(const Handle& a, const Handle& b) {
    return a.area() < b.area();
}