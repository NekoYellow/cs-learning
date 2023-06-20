#include "sort.h"
#include <iostream>
#include <vector>
#include <list>
#include <string>
#include <random>
#include <ctime>

using namespace std;

int main() {
    srand(time(0));
    vector<int> v;
	for (int i = 0; i < 10; i++) v.push_back(rand()%20);
	list<int> l;
    for (int i = 0; i < 10; i++) l.push_back(rand()%20);
	string s;
    for (int i = 0; i < 10; i++) s += 'a'+rand()%26;

    print(v);
    selectSort(v.begin(), v.end());
    print(v);

    print(l);
    selectSort(l.begin(), l.end());
    print(l);
    
    cout << s << endl;
    selectSort(s.begin(), s.end());
    cout << s << endl;
    
    return 0;
}