//To plot a polar plot
t=-%pi:.1: %pi;
subplot (1,2,1); polarplot(t, sin(2*t));
xtitle ("Polar plot of sin(2t)","t", "sin(2t)");
subplot (1,2,2); plot2d(t,sin(2*t));
xtitle ("Normal plot of sin(2t)","t", "sin(2t)");
