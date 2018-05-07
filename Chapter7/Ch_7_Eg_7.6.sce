// A program for interpolation using the Lagrange’s method.
// Input
   // x and y = A set of data points
   // xp= X value where interpolated value is required
// Output
   // yp = The interpolated value at xp
   
function [yp]=ak_Lagrange_Int(x, y, xp)
    n=length(x);
    yp=0;
    
    for k=1 : n
        pi=1;
        // Calculate Numerator of Lagrange terms
        for i=1 : n
            if i <> k then
                pi =pi*(xp-x(i));    
            end
        end
        pid=1;
        // Calculate denominator of Lagrange terms
        for j=1 : n
            if j <> k then
                pid=pid*(x(k)-x(j));
            end
        end
        //Sum Langrange terms
        yp=yp+pi*y(k)/pid;
     end
endfunction

//Example
x=[300 304 305 307];
y=[2.4771 2.4829 2.4843 2.4871];
xp=301;
[yp] = ak_Lagrange_Int(x,y,xp);
s=msprintf("The interpolated value at x= %f is %f",xp,yp);
disp(s);
