#include <iostream>
using std::cin; using std::cout;
using std::endl;

int main() {
    int a, n, m, x;
    cin >> a >> n >> m >> x;
    if (n < 3) {
        cout << a << endl;
        return 0;
    }
    int as[n], us[n];
    as[1] = 1, us[1] = 0;
    as[2] = 0, us[2] = 1;
    for (int i = 3; i < n; i++)
        as[i] = as[i-2]+as[i-1],
        us[i] = us[i-2]+us[i-1];
    int na = 1, nu = 0;
    for (int i = 1; i < n-2; i++)
        na += as[i],
        nu += us[i];
    int u = (m-na*a)/nu;
    int p = a;
    for (int i = 1; i < x-1; i++)
        p += as[i]*a+us[i]*u;
    cout << p << endl;
    return 0;
}

/*
5  0  5
3  3  5
8  3  10
11 8  13
19 11 21
31 19 32
0  32 0

1 0
0 1
1 1
1 2
2 3
*/