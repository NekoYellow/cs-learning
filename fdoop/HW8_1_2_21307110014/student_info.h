#ifndef STUDENT_INFO_H_
#define STUDENT_INFO_H_

#include "core.h"
#include <iostream>
#include <string>
#include <stdexcept>

class StuInfo {
  public:
    StuInfo(): cp(0) {}
    StuInfo(std::istream& is): cp(0) { read(is); }
    StuInfo(const StuInfo& s): cp(0) { if (s.cp) cp = s.cp->clone(); }
    StuInfo& operator=(const StuInfo& s) {
        if (this != &s) {
            delete cp;
            if (s.cp) cp = s.cp->clone();
            else cp = 0;
        }
        return *this;
    }
    ~StuInfo() { delete cp; }
    std::istream& read(std::istream&);
    std::string name() const {
        if (cp) return cp->name();
        throw std::runtime_error("uninitialized StuInfo");
    }
    double grade() const {
        if (cp) return cp->grade();
        throw std::runtime_error("uninitialized StuInfo");
    }
    static bool compare(const StuInfo& s1, const StuInfo& s2) {
        return s1.name() < s2.name();
    }
  private:
    Core* cp;
};

#endif