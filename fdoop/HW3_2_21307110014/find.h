#ifndef FIND_H
#define FIND_H
#include <iostream>
#include <cstdlib>
#include <algorithm>
using std::cout;
using std::endl;

template<class C>
C find_same(C& c1, C& c2) {
	C c;
	for (typename C::iterator it = c1.begin(); it != c1.end(); ++it) {
		if (find(c2.begin(), c2.end(), *it) != c2.end()) {
			c.push_back(*it);
		}
	}
	return c;
}
template <class C>
void print(C c) {
	for (typename C::iterator it = c.begin(); it != c.end(); ++it) {
		cout << *it << " ";
	}
	cout << endl;
}

#endif
