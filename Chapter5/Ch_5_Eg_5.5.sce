// To plot two curves in a plot using  the plot function
x=-%pi:.2:2*%pi;
 y1=sin(x);
 y2=cos(x);
 plot(x,y1,"-rx",x,y2,":gO")

//Run the following commands to generate fig 5.6

t=0:%pi/20:2*%pi;
plot(t, sin(t),'ro-.', t, cos(t),'cya+', t, abs(sin(t)),'--mo', 'markstyl', 'diam');
