! 1. Write a function that returns the largest element in a list.
    function getLargestElementFixed(list) result(r)
        integer, intent(in) :: list(4)
        integer :: r
        integer :: i
        
        r = list(1)
        do i=2,4
            if (list(i) > r) then
                r = list(i)
            end if
        end do
                
    end function getLargestElementFixed    
    
    module mod
        implicit none
        contains
        function getLargestElementVariable(list) result(r)
            ! The dimension of an array can be explicitly declared with the "dimension" keyword.
            ! The "dimension(1:)" means the array has one dimension, starts from index 1 and ends at some undefined uppper bound.
            ! I.e., if you really want 0-indexed arrays you can use dimension(0:).
            ! If you wanted a two dimensional array, for example, you could use dimension(1:,1:).
            integer, dimension(1:), intent(in) :: list
            integer :: r
            integer :: i
        
            r = list(1)
            do i=2,size(list)
                if (list(i) > r) then
                    r = list(i)
                end if
            end do                
        end function getLargestElementVariable
    end module mod
    
    program Exercises
    use mod
    implicit none
    integer :: list(4);
    integer :: getLargestElementFixed
    integer :: largestElement
    
    !integer, dimension(4) :: getLargestElementVariable
    
    list = (/ 3, 21, 9, 5 /)
    largestElement = getLargestElementVariable(list)
    
    print '(A, I0)', 'The largest element is: ', largestElement
    
    end program Exercises