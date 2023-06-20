#ifndef GRAD_H_
#define GRAD_H_

#include "core.h"

class Grad : public Core {
  public:
    Grad(): thesis(0) {}
    Grad(std::istream& is) { read(is); }
    double grade() const; // override
    std::istream& read(std::istream&); // override
  private:
    double thesis;
};

#endif