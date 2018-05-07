  //A program to implement the false position method
  //Input:
    // f = The function handle of the equation (written as x0 Scilab function) whose root is to be found.
    // (x0, x1) = The initial interval in which the root is to be found.
    // epsilon = The desired accuracy level of the root.
    // maxit = the maximum number of iterations to be performed in case the desired accuracy is not attained. 
//Output:
    // root= Calculated root.
    // noit = The number of iterations performed to obtain the root.

function [root, noit] = ak_false_position(f, x0, x1, epsilon, maxit)
    // Check the presence of a root at the interval boundary 
    if abs(f(x0))<= %eps then
        root=x0;
        noit=0;
        return;
    end
    if abs(f(x1))<= %eps then
         root=x1;
         noit=0;  
         return; 
    end
    // Verify the given initial interval to check the presence of a root in it.
    if f(x0) * f(x1)>0 then
        //Invalid initial interval. Generate an error message and return to the main Scilab window.
        root="invalid interval";
        noit=0;
        return;
    else
        // Valid initial interval. 
        i=0;
        while i < maxit
            i=i+1;
            // Calculate the next better root.
            x2=x0-(x1-x0) * (f(x0)/(f(x1)-f(x0)));
            // Check the accuracy of the computed root with the desired accuracy.
            if (abs(f(x2))< epsilon) then
                root=x2;
                noit=i;
                return;
            end
            // Select the interval having the root for the next iteration.
            if f(x2)*f(x0) >= 0 then
                x0=x2;
            else
                x1=x2;
            end             
        end
            //The maximum number of iterations is reached and no root with the desired accuracy is found. Hence, returning the root obtained after performing the maximum number of iterations. 
            root=x2;
            noit=i;
    end
endfunction
// The equation whose root is to be found
function [y]=f(x)
    y=x^3-2*x-5;
endfunction
// main program
[r,n]=ak_false_position(f,2,3,.001,50);
disp(r,'r=',n,'n=');
