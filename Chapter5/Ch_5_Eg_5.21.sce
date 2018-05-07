////////////Some surface plots/////////
///Run the code in parts to generate various plots/////


//To draw a surface plot using the surf command

x= linspace (-%pi/2, %pi/2, 30);
y=x;
[x, y] =meshgrid (x, y);
z=sin(x.^2) + sin(y.^2);
surf(z);



//To draw a surface plot using the surf command

x= linspace (-%pi/2, %pi/2,30);
y=x;
[x, y] = meshgrid (x, y);
z=sin(x.^2) +sin(y.^2);
surf (z, 'facecol', 'blu', 'edgecol', 'red');


//To draw a surface plot 
// The gdf function gets the handle of the default figure and  jetcolormap returns a set of predefines color codes.
f=gdf ();
f.color_map=jetcolormap();
x=1:3; y=x;
[xx, yy] =meshgrid (x, y);
z= [1,1,1;2,2,2;3,3,3];
col= [1,2;3,4]; 
surf (x, y, z, col);
