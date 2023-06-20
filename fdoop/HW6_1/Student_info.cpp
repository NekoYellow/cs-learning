// source file for 'Student_info'-related functions
#include "Student_info.h"
#include "median.h"
#include <stdexcept>

using std::istream;
using std::string;

istream& Student_info::read(istream& is) {
	// read and store the student's name and midterm and final exam grades
	if (!(is >> nm >> mi >> fi)) {
		is.clear();
		throw std::domain_error("");
	}
	read_hw(is, hw);  // read and store all the student's homework grades
	return is;
}

// read homework grades from an input stream into a 'vector<double>'
istream& read_hw(istream& in, Vec<double>& hw) {
	if (in) {
		// get rid of previous contents
		hw.clear();
		// read homework grades
		double x;
		while (in >> x)
			hw.push_back(x);
		// clear the stream so that input will work for the next student
		in.clear();
	}
	return in;
}

double Student_info::grade() const {
	return 0.2*mi + 0.4*fi + 0.4*median(hw.begin(), hw.end());
}

string Student_info::letter_grade() const {
	double gd = grade();
	if (gd >= 90.0) return string("A");
	if (gd >= 85.0) return string("A-");
	if (gd >= 82.0) return string("B+");
	if (gd >= 78.0) return string("B");
	if (gd >= 75.0) return string("B-");
	if (gd >= 71.0) return string("C+");
	if (gd >= 66.0) return string("C");
	if (gd >= 62.0) return string("C-");
	if (gd >= 60.0) return string("D");
	return string("F");
}

bool compare(const Student_info& x, const Student_info& y) {
	return x.name() < y.name();
}