    @R0     // Fetch n from R0 and store in D
    D=M

    @NISZERO// Check if n=0 (edge case 1/2)
    D;JEQ

    @NISONE // Check if n=1 (edge case 2/2)
    D=D-1
    D;JEQ


    @R0
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



(NISZERO)   // Edge case 1/2: R1=0
    @R1
    M=0

    @END
    0;JMP

(NISONE)    // Edge case 2/2: R1=1
    @R1
    M=1

    @END
    0;JMP