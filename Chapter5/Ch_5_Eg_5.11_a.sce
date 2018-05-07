// To plot an area plot
x=0:.1:5;
 y=1+abs(sin(x));
 m=min(y);      // Finding the minimum value of y data points, where x-axis is placed.
 x= [0, x, 5];    //Extending the x data points
 y=[m,y,m];    //Extending the y data points
 plot(x,y);
 e=gce ();       // Getting the handle of the plotted curve
 e.children(1).polyline_style=5;     // Setting the fill style of the curve to convert it into an area plot
 xtitle ("Area plot","x","1+abs(sin(x))");
