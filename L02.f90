! 2. Write function that reverses a list, preferably in place.
        
    program Exercises
        implicit none
        integer :: list(4)
        
        list = (/1, 2, 5, 3/)
        call reverse(list)        
        
        contains
        subroutine reverse(list)
            ! Reverses in place.
            integer, dimension(1:) :: list
            integer :: i
            integer :: s
            integer :: halfSize
            integer :: temp
            
            s = size(list)
            halfSize = s / 2
            
            ! Swap pairs of elements in the list.
            do i=1,halfSize
                temp = list(i)
                list(i) = list(s-i+1)
                list(s-i+1) = temp                
            end do
            
        end subroutine reverse
    
    end program Exercises