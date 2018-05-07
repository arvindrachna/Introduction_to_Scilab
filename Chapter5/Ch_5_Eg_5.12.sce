// To plot various types of vertical bar charts in a graphics window
x=3:5;
y=1:3;
x1= [1,4,5];
y1=5*rand (3,3);
y2= [1, -2,3];
subplot (2,3,1), bar(y);
subplot (2,3,2), bar(x, y);
subplot (2,3,3), bar (x, y1);
subplot (2,3,4), bar (x, y1,"stacked");
subplot (2,3,5), bar (x, y2);
subplot (2,3,6), bar (x, y1,.2,"green");
