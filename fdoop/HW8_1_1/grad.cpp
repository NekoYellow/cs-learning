#include "grad.h"
#include <utility>

double Grad::grade() const {
    return std::min(Core::grade(), thesis);
}

std::istream& Grad::read(std::istream& is) {
    read_common(is);
    is >> thesis;
    read_hw(is, hw);
    return is;
}