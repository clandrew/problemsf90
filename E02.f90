! 2. Write a program that asks the user for their name and greets them with their name.
    
    program Exercises

    implicit none
    character(len=16) :: name
    
    print *, 'Please enter your name.'    
    read(*, '(a)') name
    print *, 'Hello, ', name

    end program Exercises

