! Write a function that returns the elements on odd positions in a list.
    
    module mod
        implicit none
        contains
        function test(list) result(r)
            integer, dimension(1:), intent(in) :: list
            integer, dimension(1:(size(list)+1)/2) :: r
            integer :: i
            integer :: j
            
            j=1            
            do i=1,size(list)
                if (modulo(i, 2) == 1) then ! Odd position
                    r(j) = list(i)
                    j = j + 1
                end if
            end do
            
        end function test
    end module mod
    
    program Exercises
        use mod
        implicit none
        integer :: list(5)
        integer :: odd(3)
        
        list = (/6, 2, 1, 10, 5/)
        odd = test(list)        
    
    end program Exercises