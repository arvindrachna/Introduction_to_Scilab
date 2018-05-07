//A program to implement the bisection method
//Input:
    // f = The function handle of the equation (written as a Scilab function) whose root is to be found.
    // (a, b) = The initial interval in which the root is to be found.
    // epsilon = The desired accuracy level of the root.
    // maxit = the maximum number of iterations to be performed in case the desired accuracy is not attained. 
//Output:
    // root= Calculated root.
    // noit = The number of iterations performed to obtain the root.

function [root, noit]=ak_bisect(f, a, b, epsilon, maxit)
    // Check the presence of a root at the interval boundary
    if abs(f(a))<= %eps then
        root=a;
        noit=0;
        return;
    end
    if abs(f(b))<= %eps then
         root=b;
         noit=0;  
         return; 
    end
    // Verify the given initial interval to check the presence of a root in it.
    if f(a)*f(b)>0 then
        //Invalid initial interval. Generate an error message and return to the main Scilab window.
        root="invalid interval";
        noit=0;
        return;
    else
        // Valid initial interval. 
        i=0;
        while i < maxit
            i=i+1;
            // Bisect the current interval.
            c=(a+b)/2;
            // Check the accuracy of the computed root with the desired accuracy.
            if (c <> 0 & abs((a-b)/c)< epsilon) | f(c)==0 then
                root=c;
                noit=i;
                return;
            end
            // Select the interval having the root for the next iteration.
            if f(c)*f(a) >= 0 then
                a=c;
            else
                b=c;
            end
            
        end
 //The maximum number of iterations reached and no root with the desired accuracy is found. Hence, returning the root obtained after performing the maximum number of iterations. 
            root=c;
            noit=i;
    end
    
endfunction
// The equation whose root is to be found
function [y]=f(x)
    y=x^2-3*x+2;
endfunction
// main program
[r, n] =ak_bisect(f,0.3,1.3,.001,50)
