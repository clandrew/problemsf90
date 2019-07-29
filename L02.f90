! 2. Write function that reverses a list, preferably in place.
    
    module mod
        ! Using a module here to provide an explicit interface. Compiler requires an explicit interface for subroutines
        ! that have an assumed-shape array as a parameter.
        implicit none
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
    end module mod
    
    program Exercises
        use mod
        implicit none
        integer :: list(4)
        
        list = (/1, 2, 5, 3/)
        call reverse(list)
    
    end program Exercises