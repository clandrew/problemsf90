! 9. Write a guessing game where the user has to guess a secret number. After every guess the program tells the user whether 
! their number was too large or too small. At the end the number of tries needed should be printed. It counts only as one 
! try if they input the same number multiple times consecutively.
    
    program Exercises
    implicit none
    integer :: secretNumber
    integer :: guess
    integer :: lastGuess
    integer :: numTries
        
    secretNumber = 23
    numTries = 0
    lastGuess = 0
        
    print *, 'Please guess a number:'
        
10      &        
    read *, guess
        
    if (numTries .eq. 0 .or. guess .ne. lastGuess) then
        numTries = numTries + 1
    end if
        
    lastGuess = guess
        
    if (guess .eq. secretNumber) then
        print *, 'You got it!'
        print '(A, I0)', 'Number of tries: ', numTries
            
    else if (guess .lt. secretNumber) then
        print *, 'Too low. Try again:'
        goto 10
        
    else
        print *, 'Too high. Try again:'
        goto 10
        
    end if       
end program