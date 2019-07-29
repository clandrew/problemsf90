! 1. Write a function that returns the largest element in a list.
    
    !This program has two solutions- one with a bounded list, and one with an unbounded one.
    
    function getLargestElement$fixed4(list) result(r)
        integer, intent(in) :: list(4)
        integer :: r, i, listSize
        
        r = list(1)
        do i=2,4
            if (list(i) > r) then
                r = list(i)
            end if
        end do
        
    end function getLargestElement$fixed4
    
    ! Alternatively, return the largest element of an array of unbounded size.
    ! This uses an F90 "assumed shape array".
    function getLargestElement$unbounded(list) result(r)
    
        ! The dimension keyword allows you to declare an array with unbounded upper limit. 
        ! I've heard mixed opinions about whether assumed shape arrays are just as good for performance. In general, it's probably
        ! desirable to declare arrays with an explicit size when possible so that the compiler can go to town on it. However, this works if
        ! you can't structure things that way.    
        integer, dimension(1:), intent(in) :: list
        integer :: r
        integer :: i
        integer :: listSize
        
        ! The size keyword is available through F90.
        listSize = size(list)
        
        r = list(1)
        if (listSize .gt. 1) then
            do i=2,size(list)
                if (list(i) > r) then
                    r = list(i)
                end if
            end do
        end if
                
    end function getLargestElement$unbounded
    
    program Exercises
    implicit none
    integer :: list4(4)
    integer :: list(10);
    integer :: getLargestElement$fixed4
    integer :: getLargestElement$unbounded
    integer :: largestElement
    
    list4 = (/ 23, 75, 198, 3 /)
    largestElement = getLargestElement$fixed4(list4)
    print '(A, I0)', 'The largest element in the first list is: ', largestElement
    
    list = (/ 3, 215, 9, 5, 88, 22, 545, 3, 7, 1 /)
    largestElement = getLargestElement$unbounded(list)    
    print '(A, I0)', 'The largest element is in the second list is: ', largestElement
    
    end program Exercises