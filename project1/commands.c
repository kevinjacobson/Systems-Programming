#ifndef _PROJECT1_COMMANDS_H_
#define _PROJECT1_COMMANDS_H_

#include "structs.h"
#include "student_list.h"
#include "course_list.h"
#include "management.h"

void cmd_student(int sid, char* sname)
{
    //TODO: Proper I/O
    if ( lookup_student(sid) == NULL)
    {
        create_student(sid,sname);
    }
}

void cmd_open(char* cid, int size)
{
    //TODO: Proper I/O
    if ( lookup_course(cid) == NULL)
    {
        create_course(cid,size);
    }
}

void cmd_close(char* cid)
{
    struct Course* course = lookup_course(cid);
    struct Student* cur;
    int i;
    //TODO: Proper I/O

    if (course != NULL) // check that course exists
    {
        cur = student_head;
        while (cur != NULL)
        {
            for (i = 0; i < MAX_COURSELOAD; i++)
            {
                if (cur->courses[i] == course)
                {
                    cur->courses[i] = NULL;
                }
            }
            cur = cur->next;
        }
        remove_course(course);
    }
    else
    {
        //TODO: Handle error
    }
}

void cmd_add(int sid, char* cid)
{
    struct Student* student = lookup_student(sid);
    struct Course* course = lookup_course(cid);
    int i;
    int addedIndex;

    if (student == NULL)
    {
        //TODO: Error handle
    }
    else if (course == NULL)
    {   
        //TODO: Error handle
    }
    else 
    {
        if (num_students_in_course(course) < (course->size))
        {
            addIndex = -1;
            for(i = 0; i < MAX_COURSELOAD && addIndex == -1; i++)
            {
                if(student->courses[i] == NULL)
                {
                    student->courses[i] = course;
                    addIndex = i;
                    break;
                }
            }
        }
        if (addIndex == -1)
        {
            //TODO: Error handle
        }
    }
}

void command_drop(int sid, char* cid)
{
    struct Course* course = lookup_course(cid);
    struct Student* student = lookup_student(sid);
    int i;
    int removeIndex;
    if(course == NULL)
    {
        //TODO: Error handle
    }
    else if(student == NULL)
    {
        //TODO: Error handle
    }
    else
    {
        removeIndex = -1;
        for(i = 0; i < MAX_COURSELOAD; i++)
        {
            if(student->courses[i] == course)
            {
                removeIndex = i;
                student->courses[i] = course;
                break;
            }
        }
        if(removeIndex == -1;)
        {
            //TODO: Error handle
        }
    }
}

#endif // _PROJECT1_COMMANDS_H_
