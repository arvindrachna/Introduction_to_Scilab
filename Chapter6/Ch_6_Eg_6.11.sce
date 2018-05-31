// A program to generate a series.
i = 0; // Initialization of the loop control variable
s='Series:';
while i<5
    s=s+' '+string(i*i);
    i = i + 1; //Update the loop control variable
end
disp(s);

//To extract digits of a number and calculate their sum
n=789;
s=0;
d=sprintf ("The digits of %d are:",n);
while (n>0)
    r=pmodulo(n,10); //pmodulo is a library function to calculate reminder
    d=d+' '+ string(r);
    s=s + r;
    n=int(n/10);
end
s='The sum of the digits is:'+string(s);
disp (s, d);
