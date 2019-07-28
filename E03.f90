! 3. Modify the previous program such that only the users Alice and Bob are greeted with their names.
    
    program Exercises

    implicit none
    character(len=16) :: name
    
    print *, 'Please enter your name.'    
    read(*, '(a)') name
    
    if (name .eq. 'Alice' .or. name .eq. 'Bob') then
        print *, 'Hello, ', name
    end if

    end program Exercises

