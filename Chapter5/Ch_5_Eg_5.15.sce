// To plot different types of pie charts in a graphics window
x= [10,20,15,25];
subplot (2,2,1), pie(x); xtitle ("Simple Pie Chart");
sp= [1,1,1,1];
subplot (2,2,2), pie (x, sp); xtitle ("Separated Pie Chart");
txt= ["Red", "Green", "Blue", "Yellow"];
subplot (2,2,3), pie (x, txt); xtitle ("Labelled Pie Chart");
sp= [0,1,0,0];
subplot (2,2,4), pie (x, sp, txt); xtitle ("Separated (Individual pieces) Pie Chart");
