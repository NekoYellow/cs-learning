#include"Student_info.h"
using std::istream;
using std::vector;

bool operator==(const StuInfo& a, const StuInfo& b) {
	return a.name == b.name;
}

bool cmp(const StuInfo& a, const StuInfo& b) {
    if (a.total == b.total) return a.name < b.name;
    return a.total > b.total;
}

istream &read_hw(istream &in, vector<double> &hws) {
	if (in) {
		hws.clear();
		double x;
		while (in >> x) hws.push_back(x);
		in.clear();
	}
	return in;
}

istream &read(istream &in, StuInfo &stu) {
	in >> stu.name >> stu.midterm >> stu.final;
	read_hw(in, stu.hws);
	return in;
}