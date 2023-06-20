#include "function.h"
#include <iostream>
#include <iomanip>
#include <list>
#include <cstdlib>
#include <random>
#include <ctime>
#include <string>
#include <vector>
using namespace std;

int main() {
	srand(time(0));
	vector<int> v1;
	for (int i = 0; i < 10; i++) v1.push_back(rand()%20);
	vector<double> v2;
	for (int i = 0; i < 10; i++) v2.push_back((double)(rand()%60)/13.0);
	vector<string> v3;
	for (int i = 0; i < 10; i++) {
		string s;
		int length = 2+rand()%5;
		for (int j = 0; j < length; j++) s += 'a'+rand()%26;
		v3.push_back(s);
	}

	// int vector
	cout << "the integer list:" << endl;
	MY::print(v1);
	cout << endl;
	int sum1 = MY::accumulate(v1.begin(), v1.end(), 0);
	cout << "the sum of the integer list: " << sum1 << endl;
	vector<int>::iterator p1 = max_element(v1.begin(), v1.end());
	cout << "the max element in the integer list: " << *p1 << endl;
	p1 = min_element(v1.begin(), v1.end());
	cout << "the min element in the integer list: " << *p1 << endl
		 << endl;

	// double vector
	int prec = cout.precision();
	cout << setprecision(6) << "the double list:" << endl;
	MY::print(v2);
	cout << endl;
	double sum2 = MY::accumulate(v2.begin(), v2.end(), 0.0);
	cout << "the sum of the double list: " << sum2 << endl;
	vector<double>::iterator p2 = max_element(v2.begin(), v2.end());
	cout << "the max element in the double list: " << *p2 << endl;
	p2 = min_element(v2.begin(), v2.end());
	cout << "the min element in the double list: " << *p2 << endl
		 << setprecision(prec) << endl;
	
	// string vector
	cout << "the string list:" << endl;
	MY::print(v3);
	cout << endl;
	string sum3 = MY::accumulate(v3.begin(), v3.end(), string(""));
	cout << "the concatenation of the string list: " << sum3 << endl;
	vector<string>::iterator p3 = max_element(v3.begin(), v3.end());
	cout << "the max element in the string list: " << *p3 << endl;
	p3 = min_element(v3.begin(), v3.end());
	cout << "the min element in the string list: " << *p3 << endl;

	return 0;
}