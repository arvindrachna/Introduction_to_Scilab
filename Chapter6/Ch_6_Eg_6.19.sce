// A program to read data from a string.

mprintf("\nEnter a string in the format Name:ABC,ID:01,Age:20,Weight:50.35kg");
s=mscanf("%s");
[n,Name,ID,Age,Weight]=msscanf(s,"Name:%3s,ID:%d,Age:%d,Weight:%fkg");
disp(Weight,Age,ID,n);
A=msscanf(s,"Name:%3s,ID:%d,Age:%d,Weight:%fkg");
disp(A);
