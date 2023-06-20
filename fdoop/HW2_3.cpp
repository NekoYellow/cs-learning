#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <cmath>

using namespace std;

// representing big number as vector<int>

vector<int> int2vec(int num) {
    vector<int> a;
    while (num) {
        a.push_back(num%10);
        num /= 10;
    }
    return a;
}

string vec2str(const vector<int> &a) {
    string repr;
    int i = a.size()-1;
    while (!a[i]) i--;
    for (; i > -1; i--) {
        repr += '0'+a[i];
    }
    return repr;
}

vector<int> add(vector<int> a, vector<int> b) {
    int l1 = a.size(), l2 = b.size();
    while (l1 < l2) a.push_back(0), l1++;
    while (l2 < l1) b.push_back(0), l2++;
    vector<int> sum;
    int d = 0;
    for (int i = 0; i < l1; i++) {
        d += a[i]+b[i];
        sum.push_back(d%10);
        d /= 10;
    }
    if (d) sum.push_back(d);
    return sum;
}

vector<int> mul(vector<int> a, vector<int> b) { // referred to https://oi-wiki.org/math/bignum/
    int l1 = a.size(), l2 = b.size();
    int l = l1+l2;
    while (l1 < l) a.push_back(0), l1++;
    while (l2 < l) b.push_back(0), l2++;
    vector<int> prod(l, 0);
    for (int i = 0; i < l-1; i++) {
        for (int j = 0; j <= i; j++) {
            prod[i] += a[j]*b[i-j];
        }
        if (prod[i] > 9) {
            prod[i+1] += prod[i]/10;
            prod[i] %= 10;
        }
    }
    return prod;
}

int main() {
    cout << "Enter n(1<=n<=50): ";
    int n;
    cin >> n;
    vector<int> ans = int2vec(0), term = int2vec(1);
    for (int i = 1; i <= n; i++) {
        term = mul(term, int2vec(i));
        ans = add(ans, term);
    }
    for (int i = 1; i <= n; i++) {
        if (i < n) cout << i << "!+";
        else cout << i << "!=";
    }
    cout << vec2str(ans) << endl;
    return 0;
}