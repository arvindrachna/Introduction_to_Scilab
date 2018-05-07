//To plot a scatter plot
t=linspace(0,6*%pi,50);
x=t;
y=t.*sin(t);
z=exp(t./5);
col (1:50) =t;
clf ();
// size of the markers=25
//color of the markers are defined by // the col vector
//fill- Markers are to be filled
//s – Marker type is square
 //markerEdgeColor is set black
scatter3(x,y,z);
scatter3(x,y,z,25,col,"fill","s", "markerEdgeColor", "black");

//"fill","s", "markerEdgeColor", "black")