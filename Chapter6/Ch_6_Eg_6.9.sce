//Use of the xstring function.

str=['lower left', 'upper left', 'centre','lower right', 'upper right'];
xstring([0,0,.5,1,1],[0,1,.5,0,1],str)// Strings at various locations
xstring(.1,.1,str);// Strings concatenated together
xstring(.2,.2,'at angle',30)// String drawn at an angle
xstring(.3,.3,'In the box',0,1)// String drawn in a box
xset("font",0,3)// change size font
xstring(.6,.6,'Larger font')
xstring(.7,.8,'Latext Style')// Latex strings
xstring(.7,.7,'$\textstyle\sum_{n=1}^{+\infty}\frac1{n^2}=\frac{\pi^2}{6}$')
xstring(.1,.8,'Different font (Roman)');
xset("font",1,10);
xstring(0.1,0.6,"abc")//Different font
