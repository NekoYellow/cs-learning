#include "fails_list.h"
using std::list;

bool fgrade(const StuInfo &s) {
	return s.total < 60;
}

list<StuInfo> extract_fails(list<StuInfo>& ss) {
	list<StuInfo> fails;
	list<StuInfo>::iterator it = ss.begin();
	while (it != ss.end()) {
		if (fgrade(*it)) {
			fails.push_back(*it);
			it = ss.erase(it);
		} else {
			++it;
		}
	}
	return fails;
}
