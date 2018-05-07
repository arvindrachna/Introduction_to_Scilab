// A program to calculate integration using trapezoidal and Simpson’s 1/3 rule.
// Input
   // x and y = A set of data points
// Output
   // I = The value of integration
  
// Function for the trapezoidal method
function [I]=ak_integration_trap(x, y)
h=x(2)-x(1);
I=h*(y(1)+2*sum(y(2:1:$-1))+y($))/2;
endfunction

// Function for the Simpson’s 1/3 rule
function [I]=ak_integration_simp(x, y)
h=x(2)-x(1);
I=h*(y(1)+4*sum(y(2:2:$-1))+2*sum(y(3:2:$-1))+y($))/3;
endfunction

//Example 1
clc;
x=7.47:.01:7.52;
y=[1.93 1.95 1.98 2.01 2.03 2.06];

[I]=ak_integration_trap(x,y);
disp(I, "Integration using the trapezoidal method");
[I]=ak_integration_simp(x,y)
disp(I, "Integration using the Simpson’’s 1/3 rule");

//Example 2
x=0:.125:1;
y=1 ./(1+x);
[I]=ak_integration_trap(x,y);
disp(I, "Integration using the trapezoidal method");
[I]=ak_integration_simp(x,y)
disp(I, "Integration using the Simpson''s 1/3 rule");
