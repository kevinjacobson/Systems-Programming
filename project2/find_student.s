// Filename: find_student.s
// Author: Kevin Jacobson

// find_student
// Searches the student list for record
// with sid and returns a pointer to it.
// If no record exists, null is returned


    .globl students

    .globl find_student
find_student:
    enter   $0,         $0
    movl    students,   %ebx    // Set eax to the current node
find_student_loop:
    cmpl    $0,         %ebx
    jz      find_student_done    // Reached NULL :(
    movl    8(%ebp),    %eax     // Load sid into eax
    cmpl    12(%ebx),   %eax     // Compare to current nodes sid
    jz      find_student_done    // if sid1 == sid2
    movl    (%ebx),     %ebx     // Load next course
    jmp     find_student_loop
find_student_done:
    movl    %ebx,       %eax
    leave
    ret
