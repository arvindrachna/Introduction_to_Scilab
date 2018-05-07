// A Program to solve a system of equations using the matrix inversion method.
//Input:
    // a = the coefficient matrix of the system of equations 
    // b = the right side constant vector of the system of equations
//Output:
    // x= the solution vector
//A function subprogram for the matrix inversion method to solve the system of equations
function [x]=ak_Linear_System_Matrix(a, b)
    try // to handle the situation when the inverse of the matrix does not exist
        a_inv=inv(a);
        x=a_inv*b;
    catch
        disp(lasterror());
        x=[];
    end

endfunction

//Main Program
a=[3 1 2;2 -3 -1;1 2 1];
b=[3;-3;4];
[x] = ak_Linear_System_Matrix(a,b);
