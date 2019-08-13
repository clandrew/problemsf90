!6. Write a function that tests whether a string is a palindrome.
    
    program Exercises
    implicit none
    logical :: r
    character(len=16) :: testStr
    
    testStr = 'racecar'
    call doTestCase(testStr)
    
    testStr = 'a'
    call doTestCase(testStr)
    
    testStr = 'coffee'
    call doTestCase(testStr)
    
    contains
    
    subroutine doTestCase(str)
        character(len=16), intent(in) :: str
        logical :: res
        
        res = isPalindrome(str)
        if (res) then
            print '(A, A)', trim(str), ' is a palindrome.'
        else
            print '(A, A)', trim(str), ' is not a palindrome.'
        end if
    
    end subroutine doTestCase
    
    function isPalindrome(str) result(r)
        character(len=16) :: str
        logical :: r
        integer :: left
        integer :: right
        integer :: strlen
        integer :: halflen
        character :: leftCh, rightCh
        
        strlen = len_trim(str)
        halflen = strlen / 2
        
        do left=1, halflen
            right = strlen - left + 1
            leftCh = str(left:left+1)
            rightCh = str(right:right+1)
            if (leftCh .ne. rightCh) then
                r = .false.
                return
            end if
        end do
        
        r = .true.
        
    end function isPalindrome
    
    end program Exercises