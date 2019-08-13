! 9. Write a function that concatenates two lists. [a,b,c], [1,2,3] -> [a,b,c,1,2,3]
    
    program Exercises
        implicit none
        
        integer :: listA(3)
        integer :: listB(5)
        integer :: concatenated(8)
        
        listA = (/ 5, 2, 3 /)
        listB = (/ 9, 1, 777, 0, 6 /)
        concatenated = concatenate(listA, listB)
        
        contains
        
        function concatenate(listA, listB) result(res)
            integer, dimension(:), intent(in) :: listA
            integer, dimension(:), intent(in) :: listB
            
            integer :: res(size(listA) + size(listB))
            integer :: listIndex
            integer :: resultIndex
            
            resultIndex = 1
            
            do listIndex=1,size(listA)
                res(resultIndex) = listA(listIndex)
                resultIndex = resultIndex + 1
            end do
            
            do listIndex=1,size(listB)
                res(resultIndex) = listB(listIndex)
                resultIndex = resultIndex + 1
            end do
            
        end function concatenate
    
    end program Exercises