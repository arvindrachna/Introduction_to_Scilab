// A program to find factorial of a number using recursion.

function [y]=fact(x)
    disp(sprintf('Calling fact(%d)', x));
if x == 1 then  
     y=1  
else  
    y=x*fact(x-1)
end  
endfunction
// Main program
y=fact(5);  // calling the function
disp(sprintf("Result: fact(5)=%d", y));
