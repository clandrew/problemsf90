! Write a function that combines two lists by alternatingly taking elements, e.g. [a,b,c], [1,2,3] -> [a,1,b,2,c,3].
    
    program Exercises
        implicit none
        
        integer :: listA(3)
        integer :: listB(5)
        integer :: alternate(8)
        
        listA = (/ 5, 2, 3 /)
        listB = (/ 9, 1, 777, 0, 6 /)
        alternate = alternateElements(listA, listB)
        
        contains
        
        function alternateElements(listA, listB) result(res)
            ! This is set up to permit input arrays of different sizes. If they are different sizes, it will
            ! stop alternating and finish up by picking elements from the end of the bigger array.
            integer, dimension(:), intent(in) :: listA
            integer, dimension(:), intent(in) :: listB
            
            integer :: res(size(listA) + size(listB))
            integer :: listIndexA
            integer :: listIndexB
            integer :: resultIndex
            
            listIndexA = 1
            listIndexB = 1
            resultIndex = 1
            
            do while (resultIndex .le. size(res))
                if (listIndexA .le. size(listA)) then
                    res(resultIndex) = listA(listIndexA)
                    listIndexA = listIndexA + 1
                    resultIndex = resultIndex + 1
                end if
                
                if (listIndexB .le. size(listB)) then
                    res(resultIndex) = listB(listIndexB)
                    listIndexB = listIndexB + 1
                    resultIndex = resultIndex + 1
                end if
            end do
            
        end function alternateElements
    
    end program Exercises