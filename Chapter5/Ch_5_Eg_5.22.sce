////////////Examples of contour plots/////////
///Run the code in parts to generate various contour plots/////


//To plot level curves
x= linspace (-3,3,50);
[xx,yy]=meshgrid(x, x);
z=-5 ./(1+ xx.^2+yy.^2);
// the parameters of the flag are [mode, type, box]
// mode=0 means the level curves are drawn on the surface defined by (x, y, z).
// type=2, rescales automatically 3d boxes with extreme aspect ratios.
// box =3 means a box surrounding the surface is drawn and captions are added.
contour (x, x, z, 10, flag= [0 2 3]);


//To plot level curves

x= linspace (-3,3,50);
[xx,yy]=meshgrid(x ,x);
z=sin(xx.^2)+sin(yy.^2);
contour (x, x, z, 5, flag= [0 2 3]);
