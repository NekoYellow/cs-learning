#ifndef CORE_H_
#define CORE_H_

// 'Core.h' header file
#include <iostream>
#include <string>
#include <vector>

class Core {
  public:
    Core(): mi(0), fi(0) {};
    Core(std::istream& is) { read(is); }
    std::string name() const { return nm; }
    virtual double grade() const;
    virtual std::istream& read(std::istream&);
  protected:
    std::istream& read_common(std::istream&);
    double mi, fi;
    std::vector<double> hw;
  private:
    std::string nm;
};

std::istream& read_hw(std::istream&, std::vector<double>&);
bool compare(const Core&, const Core&);
bool compare_Core_ptrs(const Core*, const Core*);

#endif
