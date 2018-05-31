//run one deff and feval section at a time
//A program to illustrate the multiple evaluation of a function with single argument.
deff('[z]=f(x)','z=x^2')
feval (1:10, f)

//A program to illustrate the multiple evaluation of  a function with two arguments
deff('[z]=f (x, y)','z=x^2+y^2');
mat=feval (1:4,1:3, f)

