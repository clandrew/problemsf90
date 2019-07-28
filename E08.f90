!8. Write a program that prints all prime numbers. 
!(Note: if your programming language does not support arbitrary size numbers, printing all primes up to the largest number you can easily represent is fine too.)
    
    function isPrime(i) result(r)
        integer*2, intent(in) :: i
        integer*2 :: limit
        integer*2 :: j
        logical :: r
        
        if (i .eq. 1 .or. i .eq. 2) then
            r = .true.
            return
        end if
        
        limit = i/2
        
        do j=2,limit
            if (mod(i, j) == 0) then
                r = .false.
                return
            end if
        end do
        
        r = .true.
        return
    end function
    
    program Exercises
    
    ! The type 'integer' by itself doesn't have an exact size specification, it could be a two-byte or four-byte type 
    ! depending on the compiler. To get an integer with a specific size, you use integer*2 or integer*4 (or possibly integer*8 if supported). 
    ! Although I don't think the integer can be smaller than 2 bytes, this uses integer*2 explicitly just in case I'm wrong about that.
    integer*2 :: i
    logical :: isPrime
    
    do i=1,32767 ! Limit of two byte type
        ! Test if prime
        if (isPrime(i)) then
            print '(I0)', i
        end if
    end do
    
    end program Exercises