//To add and remove a grid to the plot.
x=-%pi:.2:%pi; 
y=sin(x); plot2d(x,y);
xgrid(5)    // Adds a grid
xgrid(-1)  // Removes the grid
