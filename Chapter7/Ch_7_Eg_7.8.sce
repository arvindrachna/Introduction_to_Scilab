// A program to find the derivatives from tabular data using the Newton’s forward interpolation.
// Input
   // x and y = A set of data points
   // xp = A point where derivatives are calculated
// Output
   // yp = A polynomial of the form a0+a1 x+a2 x^2+ ...+an x^n
      
function [dydx]=ak_poly_derivative(x) // A function to evaluate the derivative

n=1:length(x)-1 
c=x(2:$); // Extract the coefficients of the polynomial terms except the constant term
dydx=c.*n;
endfunction

// Main program
// input
clc;
x=1:.2:2.2;
y=round((%e^x)*10000)/10000; // Rounding to four decimal place accuracy
xp=2.0; // The point where the derivative is required
// Calculate the interpolative polynomial (refer interpolation section)
[yp] = ak_Newton_Fwd_Int_poly(x,y);
// Get coefficients of the polynomial

disp(yp, "f(x)=","Interpolating polynomial");
ypc=coeff(yp);
// Calculate first order derivative
[dydx]=ak_poly_derivative(ypc);

disp(poly(dydx,"x","coeff"),"d f(x)/dx =");
p=poly(dydx,"x","coeff");   
// Calculate the derivative at the specified point and display 
disp(msprintf("First derivative of f(x) at x= %f is %f",xp, horner(p,xp)));

// Calculate second order derivative
[d2ydx2]=ak_poly_derivative(dydx);
disp(poly(d2ydx2,"x","coeff"), "d^2 f(x)/dx^2 =");
p1=poly(d2ydx2,"x","coeff");
disp(msprintf("Second derivative of f(x) at x= %f is %f",xp, horner(p1,xp)));
