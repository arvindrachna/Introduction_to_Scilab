//To add texts to the plot

x=-%pi:.2:%pi;
y=4*sin(x);
plot2d(x,y)
xstring(1,1,"plot of sine curve",0,1) // draws a string at zero degree with a box
xstring(.5,.5,"plot of sine curve",90,1) // draws a string at 90°
xstring(-.5,-.5,"plot of sine curve",-45,1) // draws a string  at -45°
xstring(2,2,'$\textstyle\sum_{n=1}^{+\infty}\frac1{n^2}=\frac{\pi^2}{6}$')  // draws a Latex string
