    @10     // set n 
    D=A

    @R0
    M=D     // R0=n=10
    M=M-1   // n-1
    M=M-1   // n-1 // Once for formula, twice for correcting loop
   
    @R1
    M=1     // set sum

(LOOP)
    @R1
    D=M
    M=M+D   // Multiply by 2

    @R0     // Exit criteria
    D=M
    @END
    D;JEQ

    @R0
    M=M-1   // Decrement n

    @LOOP
    0;JMP
    
(END)
    @END
    0;JMP