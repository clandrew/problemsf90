! 2. Write function that reverses a list, preferably in place.
    
    function getTotal(list) result(sum)
        integer, dimension(1:), intent(in) :: list
        integer :: sum
        sum = 0
        do i=1,size(list)
            sum = sum + list(i)
        end do
    end function getTotal
    
    subroutine printTotal(list)
        integer, dimension(1:), intent(in) :: list
        integer :: sum
        sum = 0
        do i=1,size(list)
            sum = sum + list(i)
        end do
        print '(A, I0)', 'Total: ', sum
    end subroutine printTotal
    
    program P
        implicit none
        integer :: list(4)
        integer :: total
        integer :: getTotal
        
        list = (/1, 2, 5, 3/)
        total = getTotal(list)
        
        call printTotal(list)
    
    end program P