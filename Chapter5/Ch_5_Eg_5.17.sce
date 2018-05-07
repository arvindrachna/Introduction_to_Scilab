// To plot 2D contour plots with labels and without labels.
x=0:.1:3*%pi;
y=x;
z = cos(x')*cos(x);
xset("fpf","");
subplot(2,1,1);
contour2d(x,y,z,7, rect=[0,0,3*%pi,3*%pi]);
xtitle("Contour curves of the function cos(x)cos(y) with legends on the curves");
xset("fpf"," ")         // This command stops the display of levels on the curve. 
subplot(2,1,2);
 l=contour2d(x,y,z,7,frameflag=3,rect=[0,0,3*%pi,2*%pi]);
legends(string(round(l*100)/100),1:7,"lr");
xtitle("Contour curves of the function cos(x)cos(y)");
