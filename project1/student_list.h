#ifndef _PROJECT1_STUDENT_LIST_H
#define _PROJECT1_STUDENT_LIST_H

#include "structs.h"

struct Student* student_head;

//
// Creates a new student struct and adds it to the linked list
// List is sorted by alphabetic order of name
//
void create_student(int sid, char* name);

//
// Searches the list for the student by id, if students doesn't exist, returns null
//
struct Student* lookup_student(int sid);

//
// Prints the information of every student in the list
//
void print_students(void);
 
#endif // _PROJECT1_STUDENT_LIST_H
