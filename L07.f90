!7. Write three functions that compute the sum of the numbers in a list: using a for-loop, 
! a while-loop and recursion. (Subject to availability of these constructs in your language of choice.)
    
    program Exercises
    implicit none
    integer :: list(5)
    integer :: sum
    
    list = (/ 2, 4, 10, 1, 6 /) 
    
    sum = sum$for(list)
    print '(A, I0, A)', 'The sum computed with a for loop is ', sum, '.'
    
    sum = sum$while(list)
    print '(A, I0, A)', 'The sum computed with a while loop is ', sum, '.'
    
    sum = sum$recursive(list)
    print '(A, I0, A)', 'The sum computed recursively is ', sum, '.'
    
    contains
    
    function sum$for(list) result(res)
        integer, dimension(:), intent(in) :: list
        integer :: res
        integer :: i
        
        res = 0
        do i=1, size(list)
            res = res + list(i)
        end do
        
    end function
    
    function sum$while(list) result(res)
        integer, dimension(:), intent(in) :: list
        integer :: res
        integer :: i
        ! Fortran has a do-while loop, but it doesn't really match the intent of the question.
        ! It still tests the condition *before* executing the inner block, not after. 
    
        ! The difference between do-while and plain 'do' is 
        !   do-while tests a boolean
        !   do (plain) tests that a number is below another number, the common case of C/C++ for loop    
        ! So, this function will use other means of control flow to test the loop condition at the end.
        
        res = 0
        i = 1
10      &
        res = res + list(i)
        i = i + 1
        if (i .le. size(list)) then
            goto 10
        end if
    
    end function
    
    recursive function sum$recursive(list) result(res)
        integer, dimension(:), intent(in) :: list
        integer :: res
        
        res = sum$recursive$impl(list, 1)
        
    end function
    
    recursive function sum$recursive$impl(list, currentElementIndex) result(res)
        integer, dimension(:), intent(in) :: list
        integer :: currentElementIndex
        integer :: res
        
        if (currentElementIndex .gt. size(list)) then
            res = 0
            return
        end if
                
        res = list(currentElementIndex) + sum$recursive$impl(list, currentElementIndex + 1)
                
    end function
    
    end program Exercises