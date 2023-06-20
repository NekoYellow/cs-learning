#include <iostream>
#include <vector>
using namespace std;
char d[20] = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F','G','H','I','J'};

int main() {
	int n, r;
    cin >> n >> r;
    cout << n << '=';
	vector<int> res;
    while (n) {
        if (n < 0 && n%r) {
            res.push_back(n - (n/r + 1)*r);
            n = n/r + 1;
        } else {
            res.push_back(n - (n/r)*r); // is n%r
            n = n/r;
        }
    }
	for (int i = res.size()-1; i > -1; i--) {
        cout << d[res[i]];
    }
	cout << "(base" << r << ')' << endl;
	return 0;
}
