// Filename: cmp_course.s
// Author: Kevin Jacobson


// cmp_course 
//
// Compares the two cids ABnum1 and CDnum2
//  returns:
//      < 0 | ABnum1 < CDnum2
//     == 0 | ABnum1 == CDnum2
//      > 0 | ABnum1 > CDnum2 
//

    .globl cmp_course
cmp_course:
    enter       $0,         $0
    movl        8(%ebp),    %eax    // put A into eax
    shll        $4,         %eax    // shift one byte over
    xorl        12(%ebp),   %eax    // put B into eax
    shll        $8,         %eax    // shift over two bytes
    xorl        16(%ebp),   %eax    // put num1 into eax

    movl        20(%ebp),   %ebx    // build CDnum2 into ebx
    shll         $4,         %ebx
    xorl         24(%ebp),   %ebx    
    shll         $8,         %ebx
    xorl         28(%ebp),   %ebx
    subl         %ebx,       %eax
    leave
    ret
