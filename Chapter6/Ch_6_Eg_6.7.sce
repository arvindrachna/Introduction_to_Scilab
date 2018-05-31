//Use of the disp  function.
clc
disp (10,20,30);
disp ([12],3);
disp("a",1,"c");
a=ones (2,2);
b=rand(3,3,"normal")
disp (a, b);
deff('[x]=myplus (y, z)','x=y + z')//deff defines inline functions. For detail, see scripts and functions.
disp (myplus (10,20))
disp(myplus) // Displays the header of the function.
