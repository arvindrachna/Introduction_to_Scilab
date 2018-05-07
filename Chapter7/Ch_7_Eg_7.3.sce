// A program to find a root of an equation using the Newton-Raphson method.
//Input:
    // f = The function handle of the equation (written as a Scilab function) whose root is to be found.
    // fd = The derivative of the function f.
    // x0= The initial guess of the root.
    // epsilon = The desired accuracy level of the root.
    // maxit = the maximum number of iterations to be performed in case the desired accuracy is not attained. 
//Output:
    // root= Calculated root.
    // noit = The number of iterations performed to obtain the root.

function [root, noit]=ak_Newton_Raphson(f, fd, x0, epsilon, maxit)
     i=0;
     while i < maxit
         i=i+1;
         h=f(x0)/fd(x0);
         x0=x0-h;
         if abs(h)<=epsilon then
             root=x0;
             noit=i
             return;
         end
         
     end
     root=x0;
     noit=i      
endfunction
// The following functions can be defined in other files or at the console window also
// The equation whose root is to be found
function [y]=f(x)
    y=x.^3-2*x-5;
endfunction
// The derivative function
function [y]=fd(x)
    y=3*x.^2-2
endfunction
[r, n] = ak_Newton_Raphson(f, fd,1,.0001,10)
