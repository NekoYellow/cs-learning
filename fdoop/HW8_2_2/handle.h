#ifndef HANDLE_H_
#define HANDLE_H_

#include "shapes.h"
#include <iostream>
#include <fstream>
#include <stdexcept>

class Handle {
  public:
    Handle(): ptr(0) {}
    Handle(const Handle& h): ptr(0) { if (h.ptr) ptr = h.ptr->clone(); }
    Handle& operator=(const Handle&);
    ~Handle() { delete ptr; }
    std::ifstream& read(std::ifstream&);
    double area() const {
        if (ptr) return ptr->area();
        throw std::runtime_error("uninitialized Handle");
    }
    double perimeter() const {
        if (ptr) return ptr->perimeter();
        throw std::runtime_error("uninitialized Handle");
    }
    bool check() const {
        if (ptr) return ptr->check();
        throw std::runtime_error("uninitialized Handle");
    }
  private:
    Shape* ptr;
};

bool compare(const Handle&, const Handle&);

#endif