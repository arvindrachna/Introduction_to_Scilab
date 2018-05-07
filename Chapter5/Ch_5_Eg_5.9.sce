// To plot various types of logarithmic plots
a=1:.01:3;
x=a.^2;
y=exp (-x);
subplot (2,2,1); plot2d(x,y)
xtitle ("(a) Nornal plot");
subplot (2,2,2); plot2d("nl",x,y);
xtitle ("(b) y-axis in logarithmic scale");
subplot (2,2,3); plot2d("ll",x,y);
xtitle ("(c) Both axes in logarithmic scale");
subplot (2,2,4); plot2d("ln",x,y);
xtitle ("(d) x-axis in logarithmic scale");
