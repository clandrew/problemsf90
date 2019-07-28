!6. Write a program that asks the user for a number n and gives them the possibility to choose between computing the sum and computing the product of 1,…,n.
    
    program Exercises
    implicit none
    integer :: n
    integer :: i
    integer :: sum
    integer :: product
    character(len=7) :: operatorChoice
    
    print *, 'Please enter a number, n:'
    read *, n
    
10 &
    print *, 'Would you like to compute the sum, or the product? Please enter the word "sum" or "product".'
    read *, operatorChoice
    
    if (operatorChoice .eq. 'sum') then
        sum = 0
        do i=1,n
            sum = sum + i
        end do
        print '(A, I0)', 'The sum of the numbers from 1 to n is ', sum
    
    else if (operatorChoice .eq. 'product') then
        product = 1
        do i=1,n
            product = product * i
        end do
        print '(A, I0)', 'The product of the numbers from 1 to n is ', product
    else
        print *, 'Please enter a valid operator.'
        goto 10
        
    end if
    
    end program Exercises