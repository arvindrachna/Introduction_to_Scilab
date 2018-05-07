// A program for interpolation using the Newton’s forward interpolation method.
// Input
   // x and y = A set of data points
   // xp= The value where interpolated value is required
// Output
   // yp = The interpolated value at xp
   
function [yp]=ak_Newton_Fwd_Int(x, y, xp)
    n=length(x);
    h=x(2)-x(1);
    p=(xp-x(1))/h;
    // Prepare forward difference table, dt
    dt=zeros(n,n);
    dt(:,1)=y';
    for i=2:n
        for j=1:n-i+1
            dt(j,i)=dt(j+1,i-1)-dt(j,i-1);
        end
    end
    // Calculate the interpolated value using the Newton's  forward interpolation formula
    ysum=dt(1,1); // Initialize ysum with y0
    pvalue=1;       //  Initialize pvalue to 1 to calculate p, p(p-1), p(p-1)(p-2) …
    fvalue=1;       //  Initialize fvalue to 1 to calculate factorial terms

    for i=1:n-1
      pvalue=pvalue*(p-i+1);
      fvalue=fvalue*i;
      ysum=ysum+pvalue*dt(1,i+1)/fvalue; 
    end
    yp=ysum;
endfunction
//Example

x=[1891,1901,1911,1921,1931];
y=[46,66,81,93,101];
xp=1895;
yp=ak_Newton_Fwd_Int(x,y,xp);
s=msprintf("y(%d)=%8.2f",int(xp),yp);
disp(s);
