#ifndef PROJECT1_STRUCTS_H_
#define PROJECT1_STRUCTS_H_

const int MAX_COURSELOAD = 5;

struct Course {
    char cid[5]; //The id of the course
    unsigned char size; //Max number of seats in the course, 0-99
    struct Course* next; //Next course in list
}

struct Student {
    unsigned int sid; //The id of the student
    char* name; //The name of the student (last first middle), seperated by spaces, max size 120
    struct Course[5] courses; //pointers to the courses the student is enrolled in
    struct Student* next; //Next student in list
}

#endif  // PROJECT1_STRUCTS_H_
 

