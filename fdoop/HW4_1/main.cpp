#include <algorithm>
#include <iomanip>
#include <ios>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>
#include "Student_info.h"

using std::cin;				using std::setprecision;
using std::cout;			using std::sort;
using std::domain_error;   	using std::streamsize;
using std::endl;			using std::string;
using std::max;				using std::vector;

int main()
{
	vector<Student_info> students;
	string::size_type maxlen = 0;       // the length of the longest name

	// read and store all the students' data.
	// Invariant: 'students' contains all the student records read so far
	//			'maxlen' contains the length of the longest name in 'students'
	try {
		while (1) { 
			Student_info record(cin);
			// find length of longest name
			maxlen = max(maxlen, record.name().size());
			students.push_back(record);
		}
	} catch (domain_error) {}

	// alphabetize the student records
	sort(students.begin(), students.end(), compare);

	// write the names and grades
	for (vector<Student_info>::size_type i = 0;
	     i != students.size(); ++i) {

		// write the name, padded on the right to 'maxlen+1' characters
		cout << students[i].name()
		     << string(maxlen + 1 - students[i].name().size(), ' ');

		// compute and write the grade
		try {
			double final_grade = students[i].grade();
			streamsize prec = cout.precision();
			cout << setprecision(3) << final_grade
			     << setprecision(prec);
		} catch (domain_error e) {
			cout << "student has done no homework";
		}
		cout << endl;
	}
	return 0;
}

