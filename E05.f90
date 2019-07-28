!5. Modify the previous program such that only multiples of three or five are considered in the sum, e.g. 3, 5, 6, 9, 10, 12, 15 for n=17
    
    program Exercises
    integer :: n
    integer :: sum
    integer :: i
    
    print *, 'Please enter a number, n:'
    read *, n
    
    sum = 0
    do i=1,n
        ! Could use modulo or mod-- modulo is 95 standard, mod is 77 standard. 
        ! They give different results for negative numbers. These numbers are positive so it doesn't matter.
        if (mod(i, 3) .eq. 0 .or. mod(i, 5) .eq. 0) then
            sum = sum + i
        end if
    end do
    
    print '(A, I0)', 'The sum of the multiples-of-3 and multiples-of-5 from 1 to n is: ', sum
    
    end program Exercises