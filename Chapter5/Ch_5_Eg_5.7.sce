// To change the color of a curve using the properties of various objects
x=-%pi:.2:2*%pi;
y1=sin(x);  y2=cos(x);  plot(x,y1,"-rx",x,y2,":gO");
a=gca();
a.grid


a.grid=[1,1];
p=a.parent;
p.background

 
 p.background=3;
 c=a.children(1).children(1);
 c.foreground
 

 c.foreground=2;
