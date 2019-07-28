!4. Write a program that asks the user for a number n and prints the sum of the numbers 1 to n
    
    program Exercises
    implicit none
    integer :: n
    integer :: sum
    integer :: i
    
    print *, 'Please enter a number, n:'
    read *, n
    
    sum = 0
    do i=1,n
        sum = sum + i
    end do
    
    print '(A, I0)', 'The sum of the numbers from 1 to n is: ', sum
    
    end program Exercises