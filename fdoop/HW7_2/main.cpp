#include "vec.h"
#include "str.h"
#include <iostream>
#include <algorithm>
#include <map>
using namespace std;

int main() {
    int number_of_words = 0;
    cout << "Enter some text: ";
    Vec<Str> words; // all input words
    Str s; // current input word
    while (cin >> s) {
        for (int i = 0; i < s.size(); i++) if (s[i] >= 'A' && s[i] <= 'Z') s[i] -= ('A'-'a');
        words.push_back(s);
        number_of_words++;
    }
    
    sort(words.begin(), words.end()); // sort words in lexicographical order

    cout << "number of the words: " << number_of_words << endl;
    int maxlen = 0;
    map<Str, int> cnt; // count the frequency of each word
    for (int i = 0; i < number_of_words; i++) {
        cnt[words[i]]++;
        maxlen = max(maxlen, words[i].size());
    }

    for (map<Str, int>::iterator it = cnt.begin(); it != cnt.end(); it++) {
        cout << it->first << string(maxlen - it->first.size() + 1, ' ') << it->second << endl;
    }
    
    return 0;
}
