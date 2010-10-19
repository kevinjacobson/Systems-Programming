#ifndef _PROJECT1_COURSE_LIST_H_
#define _PROJECT1_COURSE_LIST_H_

#include "structs.h"

struct Course* course_head;

//
// Creates a new course and adds it to the linked
// list is sorted by course id
//
void create_course(char* cid, int size);

void close_course(struct Course* course);

void lookup_course(char* cid);

#endif // _PROJECT1_COURSE_LIST_H_
