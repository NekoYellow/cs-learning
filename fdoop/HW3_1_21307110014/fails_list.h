#ifndef FAILS_LIST
#define FAILS_LIST

#include"Student_info.h"
#include"grade.h"
#include<list>

bool fgrade(const StuInfo&);
std::list<StuInfo> extract_fails(std::list<StuInfo>&);

#endif