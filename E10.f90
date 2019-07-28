! 10. Write a program that prints the next 20 leap years.
    
    program Exercises
    implicit none
    integer :: currentYear
    integer :: count
    
    integer dateTimeResult(8)
    character(len=12) unused(3)
    
    ! Intrinsic subroutine
    call date_and_time(unused(1), unused(2), unused(3), dateTimeResult)
    
    currentYear = dateTimeResult(1)
    count = 0
    
10&
    
    if (mod(currentYear, 4) .ne. 0) then
        ! Not a leap year
        
    else if (mod(currentYear, 100) .ne. 0) then
        ! It is a leap year
        print *, currentYear
        count = count + 1
        
    else if (mod(currentYear, 400) .ne. 0) then
        ! Not a leap year
        
    else
        ! It is a leap year
        print *, currentYear
        count = count + 1
    end if
        
    if (count .lt. 20) then
        currentYear = currentYear + 1
        goto 10
    end if
    
    end Program Exercises