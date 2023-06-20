#include "lib.h"
#include <iostream>
#include <algorithm>

using namespace std;

istream &read(istream &in, vector<city_temp> &cities) {
    city_temp city;
    while (in >> city.name >> city.t) {
        cities.push_back(city);
	}
	return in;
}

double average(vector<city_temp> &cities) {
    if (!cities.size()) throw domain_error("average of 0 city");
    double sum = 0;
    for (int i = 0; i < cities.size(); i++) sum += cities[i].t;
    return sum / cities.size();
}

void deviate(vector<city_temp> &cities, double avg) {
    for (int i = 0; i < cities.size(); i++) {
        cities[i].dev = abs(cities[i].t-avg);
    }
    sort(cities.begin(), cities.end(), [](const city_temp &c1, const city_temp &c2)->bool {
        return c1.dev < c2.dev;
    });
}

ostream &print(ostream &out, vector<city_temp> &cities, double avg) {
    out << "The city with the largest deviation from the average temperature is: ";
    out << cities[cities.size()-1].name << endl;
    out << "It's temperature is: ";
    out << cities[cities.size()-1].t << endl;;
    out << "The deviation is: ";
    out << cities[cities.size()-1].dev << endl;
    out << "The city with the smallest deviation from the average temperature is: ";
    out << cities[0].name << endl;
    out << "It's temperature is: ";
    out << cities[0].t << endl;;
    out << "The deviation is: ";
    out << cities[0].dev << endl;
    return out;
}

int main() {
    freopen("in.txt", "r", stdin);
    vector<city_temp> cities;
    cout << "Enter city names and temperatures: " << endl;
    read(cin, cities);  //读入城市和温度数据
    try {
        double avg = average(cities);  //求平均温度(含抛出异常)
        deviate(cities, avg);  //求温度偏差并按偏差排序
        print(cout, cities, avg);  //按要求输出
    } catch (domain_error e) {
        cout << e.what() << endl;
    }
    return 0;
}