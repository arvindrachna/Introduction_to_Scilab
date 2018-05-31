//A program to illustrate the use of Nested functions.
function y=outer_fun(x)
    a=x+1;
    disp ("executing outer_fun");
    function y=inner_fun1(x)
        z=x+2;
        whereami (); // a library function to return the current line of the program
        function y=inner_fun2(x), y=x^2, disp ("Executing inner_fun2"), endfunction;
        y=inner_fun2(z);
    endfunction
    y=inner_fun1(a)+1
    disp (msprintf ('is function inner_fun1 exist? %s', string(isdef("inner_fun1"))));
    disp (msprintf ('is function inner_fun1 exist? %s', string(isdef("inner_fun2"))));
endfunction
// Main program
disp (outer_fun (2));
disp (msprintf ('is function inner_fun1 exist? %s', string(isdef("inner_fun1"))));
