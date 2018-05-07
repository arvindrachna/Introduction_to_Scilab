// To plot different types of Stair-step plots in a graphics window
x=1:10;
y=rand(1,10)*10;
y1=(rand(3,10)*10)';
subplot(1,2,1), stairs(y);xtitle("Single stair-step plot");
subplot(1,2,2), stairs(x,y1);xtitle("Multiple stair-step plot");
