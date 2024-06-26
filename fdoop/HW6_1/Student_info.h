#ifndef GUARD_Student_info
#define GUARD_Student_info

// 'Student_info.h' header file
#include <iostream>
#include <string>
#include "vec.h"

class Student_info {
public:
	Student_info(): mi(0), fi(0) {};
	explicit Student_info(std::istream& is) { read(is); }
	double grade() const;
	std::string letter_grade() const;
	std::istream& read(std::istream&);
	std::string name() const { return nm; }
	bool valid() const { return !hw.empty(); }
private:
	std::string nm;
	double mi, fi;
	Vec<double> hw;
};

bool compare(const Student_info&, const Student_info&);
std::istream& read_hw(std::istream&, Vec<double>&);

#endif
