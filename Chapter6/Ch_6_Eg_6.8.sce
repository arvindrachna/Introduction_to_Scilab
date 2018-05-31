// use of the mprintf function.
clc
for i=1:1:4
mprintf ('\nIteration %i, %f', i, i*i);
end
r=rand (1,4);
mprintf ("\nRandom numbers are: %8.4f,%8.4f,%8.4f,%8.4f",r);
a=[1,2;3,4;5,6];
b=[7,8;9,10];
mprintf("\n%3d,%3d,%3d,%3d",a,b)
