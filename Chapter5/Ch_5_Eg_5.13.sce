//To plot various types of horizontal bar charts
x=3:5;
y=1:3;
x1= [1,4,5];
y1=5*rand (3,3);
y2= [1, -2,3];
subplot (2,3,1), barh(y);
subplot (2,3,2), barh (x, y); 
subplot (2,3,3), barh (x, y1);
subplot (2,3,4), barh (x, y1,"stacked");
subplot (2,3,5), barh (x, y2);
subplot (2,3,6), barh (x, y1,.2,"green");
