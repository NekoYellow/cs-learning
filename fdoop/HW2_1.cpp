#include <iostream>
#include <vector>
#include <string>
using namespace std;

// tolower
char toLower(char c) {
    if ('A' <= c && c <= 'Z') {
        return c + 'a'-'A';
    }
    return c;
}

// judge if two words is the same regardless of upper or lower
bool isSame(const string &s1, const string &s2) {
    if (s1.size() != s2.size()) return false;
    int n = s1.size(); // s1.size()==s2.size()
    for (int i = 0; i < n; i++) {
        if (toLower(s1[i]) != toLower(s2[i])) {
            return false;
        }
    }
    return true;
}

int main() {
    int number_of_words = 0;
    cout << "Enter some English words:" << endl;
    vector<string> words; // all input words
    string s; // current input word
    while (cin >> s) {
        words.push_back(s);
        number_of_words++;
    }
    cout << "number of the words: " << number_of_words << endl;
    vector<string> keys; vector<int> values; // no map...
    vector<bool> vis(number_of_words, false); // mark if this word is encoutered
    for (int i = 0; i < number_of_words; i++) {
        if (vis[i]) continue;
        int cnt = 0;
        for (int j = i; j < number_of_words; j++) {
            if (isSame(words[i], words[j])) {
                vis[j] = true;
                cnt++;
            }
        }
        keys.push_back(words[i]); values.push_back(cnt);
    }
    // Print the word in the form of the first encountered.
    for (int i = 0; i < keys.size(); i++) {
        cout << keys[i] << ' ' << values[i] << endl;
    }
    return 0;
}
