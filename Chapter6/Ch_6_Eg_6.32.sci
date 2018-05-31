// A program to illustrate some uses of varargin and varargout.
function [a, b, varargout] =fun1(x, y, varargin)
    a=x.^2;
    b=y.^3;
    varargout=varargin;
    [lhs, rhs] =argn (0);
    disp (sprintf ('No of input=%d, and No of output=%d', rhs, lhs));
endfunction

function [varargout]=fun2(x, varargin)
    n=length(varargin);
    varargout (1) =x.^2;
    for i=1: n
        varargout(i+1) =varargin(i).^2;
    end
    disp (sprintf ('Total no of input arguments= %d, and total no of output arguments=%d',  argn(2),argn(1)));
endfunction
