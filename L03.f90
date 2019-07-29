! 3. Write a function that checks whether an element occurs in a list.
    
    function listContains(list, x) result(r)
        integer, dimension(1:), intent(in) :: list
        integer, intent(in) :: x
        logical :: r
        integer :: i
        
        do i=1,size(list)
            if (list(i) == x) then
                r = .true.
                return
            end if
        end do
        
        r = .false.
    
    end function listContains
    
    program Exercises
        logical :: listContains
        integer :: list(4)
        logical :: r
        
        list = (/1, 6, 32, 5/)
        r = listContains(list, 8)
        
        if (r) then
            print *, 'The list contains the number.'
        else
            print *, 'The list doesn''t contain the number.' ! Escape apostrophe literal with two apostrophes.
        end if
        
    end program Exercises