//To plot multiple graphs in a graphics window using the subplot command
x=0:.1:5;
subplot (2,2,1); plot (x, sin(x));
xtitle ("Plot of x vs sin(x)");
subplot (2,2,2);
plot (x, cos(x));
xtitle ("Plot of x vs cos(x)");
subplot (2,2,3); plot (x, x.^2)
xtitle ("Plot of x vs x^2");
subplot (2,2,4); plot (x, sin(-x), x, cos(x)) 
xtitle ("Plot of x vs sin(-x) and x vs cos(x)");
