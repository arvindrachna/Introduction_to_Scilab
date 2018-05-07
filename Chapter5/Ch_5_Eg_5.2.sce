// To plot a sine curve and add Labels and Title
x=-%pi:.2:%pi; // Generate x-coordinates
y=sin(x);            // Calculate y-coordinates
plot(x, y)           // Plot the data
xlabel("x")                  //Add a label to the x-axis         
ylabel("sin(x)")          //Add a label to the y-axis
title("Plot of sin(x)") //Add a title to the plot
