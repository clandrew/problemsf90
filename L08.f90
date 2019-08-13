! 8. Write a function on_all that applies a function to every element of a list. 
! Use it to print the first twenty perfect squares. The perfect squares can be found by multiplying each natural number with itself. 
! The first few perfect squares are 1*1= 1, 2*2=4, 3*3=9, 4*4=16. Twelve for example is not a perfect square because there is no 
! natural number m so that m*m=12. (This question is tricky if your programming language makes it difficult to pass functions as arguments.)
    
    program Exercises
        implicit none        
        
        ! Fortran supports function pointers but as far as I know there isn't a way to pass them around without an explicit interface
        ! so we declare that here.
        abstract interface
            function contract(arg)
                integer :: contract
                integer, intent(in) :: arg
            end function contract
        end interface
        
        integer :: list(20)
        
        list = (/ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 /)
        call on_all(square, list)
    
    contains
    
        function square(arg) result(res)
            integer, intent(in) :: arg
            integer :: res
            
            res = arg * arg
            
        end function square
        
        subroutine on_all(fn, list)
            procedure(contract), pointer, intent(in) :: fn
            integer, dimension(:), intent(in) :: list
            integer :: i
            integer :: elementResult
                        
            do i=1, size(list)
                elementResult = fn(list(i))
                print '(I0)', elementResult
            end do
            
        end subroutine on_all
    
    end program Exercises