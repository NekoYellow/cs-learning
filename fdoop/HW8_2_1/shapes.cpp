#include "shapes.h"
#include <math.h>

double Triangle::area() const {
    double p = (ls[0] + ls[1] + ls[2]) / 2;
    return sqrt(p * (p - ls[0]) * (p - ls[1]) * (p - ls[2]));
}

double Triangle::perimeter() const {
    return ls[0] + ls[1] + ls[2];
}

double Rectangle::area() const {
    return ls[0] * ls[1];
}

double Rectangle::perimeter() const {
    return 2 * (ls[0] + ls[1]);
}

const double Circle::pi = 3.141592653589793;

double Circle::area() const {
    return pi * ls[0] * ls[0];
}

double Circle::perimeter() const {
    return 2 * pi * ls[0];
}

bool compare_shape_ptrs(const Shape* a, const Shape* b) {
    return Shape::compare(*a, *b);
}