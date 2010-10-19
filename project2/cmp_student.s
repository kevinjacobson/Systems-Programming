// Filename: cmp_students.s
// Author: Kevin Jacobson


// cmp_students
// 
// Compares the two students
// returns:
//      < 0, s1 < s2
//     == 0, s1 == s2
//      > 0, s1 > s2

    .globl strcmp                   // Declares strcmp symbol

    .globl cmp_course
cmp_course:
    enter       $0,         $0
    movl        8(%ebp),    %ecx
    movl        8(%ebp),    %edx
    pushl       8(%edx)             // Push name2 to stack
    pushl       8(%ecx)             // Push name1 to stack
    call        strcmp              // Call strcmp(name1,name2)
    cmpl        $0,         %eax    // 
    jnz         cmp_course_done     // if result != 0
    movl        12(%ecx),   %eax    // Subtract the ids
    subl        12(%edx),   %eax    // return the result
cmp_course_done
    leave
    ret

