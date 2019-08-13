! 5. Write a function that computes the running total of a list.
    
    program Exercises
    implicit none
    integer :: list(4)
    integer :: total
    
    list = (/1, 3, 4, 2 /)
    total = getTotal(list)
    
    contains
    
    function getTotal(list) result(r)
        integer, dimension(1:), intent(in) :: list
        integer :: r
        integer :: i
        r = 0
        
        do i=1,size(list)
            r = r + list(i)
        end do
        
    end function
    
    end program Exercises
