//To draw a spiral curve 
 t=0:0.1:10; 
r=10;
x=r*sin(t);
y=r*cos(t);
z=t;
param3d(x,y,z,35,45,"X@Y@Z",[2,4])
e=gce();
e.foreground=color('red');
param3d([0,0],[0,0],[0,10]);
e=gce();
e.line_style=4;
