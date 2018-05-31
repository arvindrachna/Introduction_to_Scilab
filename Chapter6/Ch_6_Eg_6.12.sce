//An example to print the number of iterations required to find the first occurrence of 5 by the rand function.
i=0;
while %t do //infinite loop
    i=i+1;
    n=round (10*rand (1,1))
    if(n==5)
        printf ("5 is found after %d iterations", i)
        break;
    end
end

//An example to  display  odd integers
s="Odd Numbers: "
for x=1:10
    if(pmodulo(x,2)==0)
        continue;
    end
    s=s+" " +string(x);
end
disp(s);
