// Filename: find_course.s
// Author: Kevin Jacobson

// find_course
// Searches the course list for record
// with cid ABnum and returns a pointer to it.
// If no record exists, null is returned


    .globl courses
    .globl cmp_course

    .globl find_course
find_course:
    enter   $0,         $0
    movl    courses,   %ebx    // Set eax to the current node
find_course_loop:
    cmpl    $0,         %ebx
    je      find_course_done    // Reached NULL :(
    pushl   8(%ebx)             // Push num2
    pushl   11(%ebx)            // Push D
    pushl   10(%ebx)            // Push C
    pushl   16(%ebp)            // Push num1
    pushl   12(%ebp)            // Push B
    pushl   8(%ebp)             // Push A
    call    cmp_course
    cmpl    $0,         %eax    // Course found!
    je      find_course_done
    movl    (%ebx),     %ebx    // Load next course
    jmp     find_course_loop
find_course_done:
    movl    %ebx,       %eax
    leave
    ret
