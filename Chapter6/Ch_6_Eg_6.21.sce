//A program to write strings in a file.
x=[1:3]';
y=x.^2;
s=msprintf("%4d%4d\n",x,y);
mputl(s,"out.dat");
