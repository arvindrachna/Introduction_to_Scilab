//To plot a multi- area plot 
y = [1  5  3;  3  2  7;  3  5  3; 2  6  1]; 
 [nL, nC] = size(y);    //Get the size of the data
 x=[ 1 ,1:nL, nL];      // Generating x axis data, with two extra points at the end to extend the curve
 base = min(y)-1;      // Finding the base level of y data up to which all the curves is extended
 bottom = ones(1,nC)*base;         // Proper bottom closure
 y= flipdim (cumsum (y, "c"),2) ;     //Stacking y data one by one
 y=[ bottom ; y;bottom];     // Extending y data for proper closure
 plot2d(x, y)       // Plotting the extended curves
 e = gce();      //Getting  the entity  handle of the current plot
 c=e.children;      // Getting the handles of the plotted curves
 c(:).polyline_style=5;      // Changing the polyline_style Property to filled mode
