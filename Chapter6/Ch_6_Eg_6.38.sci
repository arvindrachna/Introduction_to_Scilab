// A function program to illustrate the concepts of debugging.
function y=test(a, b)
    c=a+b;
    disp(c);
    for i=1:5
        disp(i);
    end
    x=funLarge(a,b);
    disp(x);
    y=x;
endfunction

function y=funLarge(a, b)
    if a>b then
        y=a;
    else
        y=b;
    end
endfunction
