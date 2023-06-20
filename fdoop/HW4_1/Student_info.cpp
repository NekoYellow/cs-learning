// source file for 'Student_info'-related functions
#include "Student_info.h"
#include "median.h"
#include <stdexcept>

using std::istream;  using std::vector;

istream& Student_info::read(istream& is)
{
	// read and store the student's name and midterm and final exam grades
	if (!(is >> nm >> mi >> fi)) {
		is.clear();
		throw std::domain_error("");
	}
	read_hw(is, hw);  // read and store all the student's homework grades
	return is;
}

// read homework grades from an input stream into a 'vector<double>'
istream& read_hw(istream& in, vector<double>& hw)
{
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
	return 0.2*mi + 0.4*fi + 0.4*median(hw);
}

bool compare(const Student_info& x, const Student_info& y)
{
	return x.name() < y.name();
}