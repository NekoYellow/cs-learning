#include "student_info.h"
#include "core.h"
#include "grad.h"

std::istream& StuInfo::read(std::istream& is) {
    delete cp;
    char ch;
    is >> ch;
    if (ch == 'U') {
        cp = new Core(is);
    } else {
        cp = new Grad(is);
    }
    return is;
}