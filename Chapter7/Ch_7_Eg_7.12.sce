// A Program to solve a system of equations using Jacobi method.
//Input:
    // a = the coefficient matrix of the system of equations 
    // b = the right side constant vector of the system of equations
    // epsilon = the desired accuracy of the roots
    // maxit = the maximum number of iterations
//Output:
    // x= solution vector

//A function subprogram for the Jacobi method to solve a system of equations
function [x, noit]=ak_Linear_Sys_Jacobi(a, b, epsilon, maxit)
    try
        aug=[a,b]; // Creating augmented matrix
        [r,c]=size(a);
        for i=1:r-1 // Pivoting equations according to the leading diagonal
            [m n]=max(abs(aug(i:$,i)),'r');
            index=n+i-1;
            aug=swap(aug,i,index)
        end
        a=aug(1:r,1:r);
        b=aug(1:r,$);
        i=1:r+1:r*r;
        ad=diag(a);
        a(i)=0;
        c=sum(abs(a),'c'); // Testing for the convergence of the solution
        d=abs(ad);
        if sum(d<c) then
            disp("Warning: The iterative method may not converge as the coefficient matrix is not a strictly dominant diagonal matrix" );
        end
        
        x=zeros(r,1);
        for i=1:maxit // Iterative process
            y=x;
            x=b-a*x;
            x=x./ad;
            z=abs(y-x);
            if (max(z)< epsilon) then // Termination condition
                break;
            end
            noit=i;
        end
        
            
    catch
        disp(lasterror()); // Error reporting
        x=[];
    end

endfunction
function [a]=swap(a, i, j)
    t=a(j,:);
    a(j,:)=a(i,:);
    a(i,:)=t;
endfunction

//Main Program
a=[-1 -1 -2 10;10 -2 -1 -1;-2 10 -1 -1;-1 -1 10 -2];
b=[-9;3; 15; 27];
epsilon=.005;
[x,n] = ak_Linear_Sys_Jacobi(a,b, epsilon,200)
disp(x, "The solution of the equations:");

a=[2 1 1;3 2 3;1 4 9];
b=[10;18;16];
[x,n] = ak_Linear_Sys_Jacobi(a,b, epsilon,200)
disp(x, "The solution of the equations:");

a=[-4 5;1 2];
b=[1;3];
[x,n] = ak_Linear_Sys_Jacobi(a,b, epsilon,200)
disp(x, "The solution of the equations:");
