// Defining a few simple functions.
function [x, y]=myfun(a, b)
    x=a+b;
    y=a-b;
endfunction

function [dist]=cal_dist(x1, y1, x2, y2)
        dist=sqrt((abs(x2-x1))^2 +(abs(y2-y1))^2);
endfunction

function [area]=cal_area(b, h)
    area=.5*b*h;
endfunction
