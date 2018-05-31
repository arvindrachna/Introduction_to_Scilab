// A function to calculate the distance between two points.
function [dist]=calc_dist(x1, y1, x2, y2)
    dist=sqrt((abs(x2-x1))^2 +(abs(y2-y1))^2);
endfunction
// A function to calculate the area of a triangle 
function [a]=calc_area(b, h);
    a=.5*b*h
endfunction

// Main program
d=calc_dist(-5,-4,-6,4);
disp(d,"  is the distance between two points");
a1=calc_area(6,4);
disp(sprintf("Area of a triangle is %f",a1));
