// A program to illustrate the nested try-catch structure.
function nestedtry(a, b)
    disp("START")
    try
        disp ("Executing the try 1 block.")
        t=10/b; // err when b=0
        try
            disp ("Executing the try 2 block.")
            z=a+1; // err when a is a string
        catch
            disp ("Error occurred in the try 2 block and handled by the catch 2 block.")
            [str, n] =lasterror ();
            disp (msprintf ("Error code: %d and error message: %s", n, str));
            errclear ();

        end
        disp ("Executing statements outside the try 2 block.")
    catch
        disp ("Error occurred in the try 1 block and handled by the catch 1 block.")
        [str, n] = lasterror ();
        disp (msprintf ("Error code: %d and error message: %s", n, str));
        errclear ();
    end
    disp("END")
endfunction
// Main program
clc;
nestedtry (1,1)
nestedtry ("a string",1)
nestedtry (1,0)
