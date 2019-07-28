!Write a program that prints a multiplication table for numbers up to 12.
    
    program Exercises
    implicit none
    integer :: x
    integer :: y
    
    write (*, fmt='(A)', advance='no') '     '
    do x=1,12
        write(*, fmt='(I4)', advance='no') x
    end do
    print *, ''
    
    write (*, fmt='(A)', advance='no') '   --'
    do x=1,12
        write(*, fmt='(A)', advance='no') ' ---'
    end do
    print *, ''
    
    do y=1,12
        write (*, fmt='(I4, A)', advance='no') y, '|'
        do x=1,12
            write (*, fmt='(I4)', advance='no') x*y ! Implicit unit 6. Unit 6 is the one specially reserved for written output to the console.
            flush (unit=6) ! Same-line output doesn't appear right away unless you flush. Not strictly necessary it was useful to get visible output when debugging
        end do
        print *, '' !Newline
    end do
    
    end program Exercises