#include "find.h"
#include <iostream>
#include <list>
#include <cstdlib>
#include <ctime>
#include <string>
#include <vector>
using namespace std;

int main() {
	srand(time(0));
	vector<int> v1, v2;
	for (int i = 0; i < 13; i++) {
		v1.push_back(rand()%20);
		v2.push_back(rand()%20);
	}
	cout << "Random integer vector 1:" << endl;
	print(v1);
	cout << "Random integer vector 2:" << endl;
	print(v2);
	cout << "Vector in common:" << endl;
	print(find_same(v1, v2));
	
	list<string> l1, l2;
	string s;
	cout << "Enter some words for string list 1:" << endl;
	while (cin >> s) l1.push_back(s);
	cin.clear();
	cout << "Enter some words for string list 2:" << endl;
	while (cin >> s) l2.push_back(s);
	cin.clear();
	cout << "List in common:" << endl;
	print(find_same(l1, l2));
	return 0;
}
