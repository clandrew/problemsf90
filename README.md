# Solutions to "Simple Programming Problems" in Fortran
This repo contains solutions to [Adrian Neumann's "Simple Programming Problems"](https://adriann.github.io/programming_problems.html) implemented in Fortran compiled using IFORT, in my own attempts to learn and gain more familiarity with the language. These aren't intended to be universal solutions, ideal solutions, or solutions that guard against all possible input errors. I'm very open to other implementation ideas and tips.

When faced with multiple ways to do something, I tried to pick the way that was standardized, prioritizing earlier standards. The particular version of IFORT I'm using supports Fortran 2008 with a sprinkling of items from newer standards than that.

## Build
These are built for x86 architecture. These are built using Intel Parallel Studio XE's Visual Studio integration.
They're organized as a single Visual Studio project/solution. Each problem is in its own file, where all but one file is set to "not included in the build". To switch problems, disable the current one and enable the new one in the build.

## Example
```fortran
!Write a program that prints a multiplication table for numbers up to 12.
    
    program Exercises
    integer :: x
    integer :: y
    
    write (*, fmt='(A)', advance='no') '     '
    do x=1,12
        write(*, fmt='(I4)', advance='no') x
    end do
    print *, ''
    
    write (*, fmt='(A)', advance='no') '   --'
    do x=1,12
        write(*, fmt='(A)', advance='no') ' ---'
    end do
    print *, ''
    
    do y=1,12
        write (*, fmt='(I4, A)', advance='no') y, '|'
        do x=1,12
            write (*, fmt='(I4)', advance='no') x*y ! Implicit unit 6. Unit 6 is the one specially reserved for written output to the console.
            flush (unit=6) ! Same-line output doesn't appear right away unless you flush. Not strictly necessary it was useful to get visible output when debugging
        end do
        print *, '' !Newline
    end do
    
    end program Exercises
```

![Example image](https://raw.githubusercontent.com/clandrew/problemsf90/master/Images/Example.PNG "Example image.")
