/////////////Illustrative examples of plot3D////
///Run the code in parts to generate various plots/////


// A simple plot of z = f(x, y) using plot3d() as a parametric surface plot.

t=[0:0.3:2*%pi]';
z=cos(t)*cos(t');
plot3d (t, t, z)

    
// The same plot using facets computed by eval3dp function.
t1=[0:0.3:2*%pi]; t2=t1;
// deff  is a library function to define an inline function.
deff ("[x, y, z] =fun (t1, t2)", ["x=t1"; "y=t2"; "z=cos(t1).* cos(t2)"]);
[xx, yy, zz] =eval3dp (fun, t1, t2);
plot3d(xx, yy, zz);
// by default, in plots generated using eval3dp function, surfaces are shown in hidden color.



// Multiple plots using colors
t=[0:0.3:2*%pi]';
z=cos(t)*cos(t');
 [xx, yy, zz] =genfac3d (t, t, z);
// Color values- 3 for Green  and 5 for Red color.
plot3d([xx xx],[yy yy],list([zz zz+4],[5*ones(1,400) 3*ones(1,400)]))



// A plot() with more parameters
t=[0:0.3:2*%pi]';
z=cos(t)*cos(t');
 [xx, yy, zz] =genfac3d (t, t, z);
//flag=[5,2,3] where, 5 is for red //color,2 is the type  value and 3 is  the  box value
plot3d (xx, yy, zz, alpha=60, theta=45, flag= [5,2,3])


