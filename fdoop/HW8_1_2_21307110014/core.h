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
    virtual Core* clone() const { return new Core(*this); }
    std::istream& read_common(std::istream&);
    double mi, fi;
    std::vector<double> hw;
  private:
    friend class StuInfo;
    std::string nm;
};

bool compare(const Core&, const Core&);
std::istream& read_hw(std::istream&, std::vector<double>&);

#endif
