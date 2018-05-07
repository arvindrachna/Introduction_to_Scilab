// A Program to solve a system of equations using Gauss elimination method.
//Input:
    // a = the coefficient matrix of the system of equations 
    // b = the right side constant vector of the system of equations
//Output:
    // x= solution vector

//A function subprogram for the Gauss elimination method to solve the system of equations
function [x]=ak_Linear_System_Gauss_E(a, b)
    try
        Aug=[a,b];
        n=length(b);
        for j = 1:n -1
            for i = j +1: n
                Aug (i,j:n+1) = Aug (i,j:n +1) - Aug (i,j) / Aug(j,j) * Aug (j,j:n+1);
            end
        end
        // Backward Substitution
        x = zeros (n ,1) ;
        x(n) = Aug(n,n +1) / Aug(n,n);
        for i = n -1: -1:1
            x(i) = (Aug(i,n +1) -Aug (i,i+1:n)*x(i +1: n))/ Aug (i,i);
        end
        
    catch
        disp(lasterror());
        x=[];
    end

endfunction

//Main Program
a=[2 1 1;3 2 3;1 4 9];

b=[10;18;16];
[x] = ak_Linear_System_Gauss_E(a,b)
