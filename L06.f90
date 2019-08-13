!6. Write a function that tests whether a string is a palindrome.
    
    program Exercises
    implicit none
    logical :: r
    character(len=16) :: str
    
    str = "Test"
    r = isPalindrome(str)
    
    
    contains
    function isPalindrome(str) result(r)
        character(len=16) :: str
        logical :: r
        integer :: i
        integer :: strlen
        integer :: halflen
        
        strlen = len(strlen)
        halflen = strlen / 2
        
        do i=1, halflen
            if (str(i) .ne. str(len(str)-i+1)) then
                r = .false.
                return
            end if
        end do
        r = .true.        
    end function isPalindrome
    
    end program Exercises