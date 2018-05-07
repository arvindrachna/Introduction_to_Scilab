//To plot curves using the plot function and add legend to the curve
x=-%pi:.2:2*%pi;
y1=sin(x); y2=cos(x);
plot(x,y1,"-rx",x,y2,":gO");
legend ("Sine curve", "Cosine Curve",1,%t);  // Output in Fig. 5.8a
//legend ("Sine curve", "Cosine Curve",3,%f);  //Output in Fig. 5.8b
