// A program to find the form of  an interpolating polynomial using the Lagrange’s  method.
// Input
   // x and y = A set of data points
// Output
   // yp = A polynomial of the form a0+a1 x+a2 x^2+ ...+an x^n
   
function [yp]=ak_Lagrange_Int_poly(x, y)
    n=length(x);
    yp=0;
    X=poly(0,'x');
    for k=1 : n
        pi=1;
        // Calculate Numerator of Lagrange terms
        for i=1 : n
            if i <> k then
                pi =pi*(X-x(i));    
            end
        end
        pid=1;
        // Calculate denominator of Lagrange terms
        for j=1 : n
            if j <> k then
                pid=pid*(x(k)-x(j));
            end
        end
        //Sum Lagrange terms
        yp=yp+pi*y(k)/pid;
     end
endfunction

//Example
x=[0 1 3 4];
y=[-12 0 12 24];
[yp] = ak_Lagrange_Int_poly(x,y);
disp(yp, "The form of the Lagrange polynomial is:");
