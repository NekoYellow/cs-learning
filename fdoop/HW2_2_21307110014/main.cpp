#include <algorithm>
#include <iomanip>
#include <ios>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>
#include "median.h"
#include "Student_info.h"
#include "grade.h"

using namespace std;

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

int main() {
	vector<StuInfo> students;
	StuInfo cur;
	int maxlen = 0;
	while (read(cin, cur)) {
		students.push_back(cur);
		maxlen = max(maxlen, (int)cur.name.size());
	}
	int rank = 1e9;
	for (int i = 0; i < students.size(); i++) {
		try {
			students[i].total = grade(students[i]);
		} catch(domain_error) {
			students[i].total = 100+rank--;
		}
	}
	sort(students.begin(), students.end(), cmp);
	for (int i = 0; i < students.size(); i++) {
		cout << students[i].name << string(maxlen+1-students[i].name.size(), ' ');
		try {
			if (!students[i].hws.size()) throw domain_error("student has done no homework");
			int prec = cout.precision();
			cout << setprecision(3) << students[i].total << setprecision(prec);
		} catch (domain_error e) {
			cout << e.what();
		}
		cout << endl;
	}
}
