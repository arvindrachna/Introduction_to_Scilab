////////////Some mesh plots/////////
///Run the code in parts to generate various plots/////

//To draw a mesh plot

[X,Y]=meshgrid(1:10,1:10);
Z=X.^2+Y.^2;
// $\huge is a latex command
xtitle('$\huge z=x^2+y^2$');
 mesh(X,Y,Z);



//To draw another mesh plot

x= linspace(-3,3,50);
y=x;
[x, y]=meshgrid(x, y);
z=-5 ./(1+ x.^2+y.^2);
mesh(z,'edgeco','r');
