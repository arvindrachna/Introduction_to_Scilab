// A program to find the form of an interpolating polynomial using the Newton’s forward interpolation.
// Input
   // x and y = A set of data points
// Output
   // yp = A polynomial of the form a0+a1 x+a2 x^2+ ...+an x^n
   
function [yp]=ak_Newton_Fwd_Int_poly(x, y)
    
    n=length(x);
    // Prepare forward difference table
    dt=zeros(n,n);
    dt(:,1)=y';
    for i=2:n
        for j=1:n-i+1
            dt(j,i)=dt(j+1,i-1)-dt(j,i-1);
        end
    end
    // Generate Newton's forward interpolation polynomial
    X = poly (0, "x");
    h = x(2) - x (1) ;
    p = (X-x (1) ) / h;
    dely0 = dt (1 ,:);

    Y = dt(1,1);

    for i = 2: length (y)-1
        t = 1;
        for j = 1:i-1
            t = t * (p-j +1) ;
        end
        Y = Y + t* dt(1,i)/ factorial (i-1);
     end
    Y = round (Y *10^2) /10^2;
    //disp (Y);
    yp=Y; 
endfunction

//Example
x = 0:3;
y = [1 0 1 10];
[yp] = ak_Newton_Fwd_Int_poly(x,y)
disp(yp, "The form of the interpolated polynomial is:");
