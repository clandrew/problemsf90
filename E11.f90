!11. Write a program that computes
! 4\cdot \sum_{k=1}^{10^6} \frac{(-1)^{k+1}}{2k-1} = 4\cdot(1-1/3+1/5-1/7+1/9-1/11\ldots).
    
    program Exercises    
    
    ! Recommendation: use Wolfram Alpha for something that resembles human legibility for the above thing
    implicit none
    integer :: k
    integer :: denominator
    real :: fraction
    real :: acc
        
    acc = 0
    
    do k=1,1000000 ! 10^6
        
        denominator = (2 * k) - 1
        fraction = 1.0 / real(denominator)
        
        ! Rather than mess around with exponents, it's easier to express multiplying by (-1)^(some function of k) this way. 
        if (mod(k, 2) .ne. 0) then
            acc = acc + fraction
        else
            acc = acc - fraction
        end if
        
    end do
    
    acc = acc * 4
    
    print *, acc    
    
    end program Exercises