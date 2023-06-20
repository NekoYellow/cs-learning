#include <algorithm>
#include <iomanip>
#include <ios>
#include <iostream>
#include <fstream>
#include <stdexcept>
#include <string>
#include <vector>
#include <random>
#include "Student_info.h"
#include "median.h"

using std::cin;				using std::setprecision;
using std::cout;			using std::sort;
using std::domain_error;   	using std::streamsize;
using std::endl;			using std::string;
using std::max;				using std::vector;
using std::ifstream;		using std::ofstream;

int main() {
	vector<Student_info> students;
	string::size_type maxlen = 0;       // the length of the longest name

	ifstream ifs;
	ifs.open("./grade");
	ofstream ofs;
	ofs.open("./final");

	// read and store all the students' data.
	// Invariant: 'students' contains all the student records read so far
	//			'maxlen' contains the length of the longest name in 'students'
	try {
		while (1) { 
			Student_info record(ifs);
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
		ofs << students[i].name()
		    << string(maxlen + 1 - students[i].name().size(), ' ');

		// compute and write the grade
		try {
			cout << students[i].letter_grade();
			ofs << students[i].letter_grade();
		} catch (domain_error e) {
			cout << "student has done no homework";
			ofs << "student has done no homework";
		}
		cout << endl;
		ofs << endl;
	}

	cout << "\nthe following is result of testing median function on array\n";

	int arr[11];
	for (int i = 0; i < 11; i++) {
		arr[i] = rand() % 100;
	}
	cout << "the random array is:\n";
	for (int i = 0; i < 11; i++) {
		cout << arr[i] << " \n"[i == 10];
	}
	cout << "the median of the array is: " << median(arr, arr+11);
	cout << "\nafter median function called, the array is unchanged:\n";
	for (int i = 0; i < 11; i++) {
		cout << arr[i] << " \n"[i == 10];
	}

	return 0;
}

