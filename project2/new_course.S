// Filename: new_course.s
// Author: Kevin Jacobson


// new_course
//
// Allocates a new course, fills all fields

    .globl allocate

    .globl new_course
new_course:
    enter       $0,         $0
    pushl       $16
    call        allocate                //eax = allocate(16)
    cmpl        $0,         %eax
    jz          new_course_done
    movl        $0,         (%eax)      // next = 0
    movl        students,   4(%eax)     // first = students (does this need $?)     
    movw        16(%ebp),   8(%eax)     // num = num
    movb        8(%ebp),    10(%eax)    // A = A
    movb        12(%ebp),   11(%eax)    // B = B
    movb        20(%ebp),   12(%eax)    // size = size
    movb        $0,         13(%eax)    // cursize = 0
    movw        $0,         14(%eax)    // unknown = 0   
new_course_done:
    ret
    leave
