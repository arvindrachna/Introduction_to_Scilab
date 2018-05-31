//A program to read formatted data from files.

fd=mopen("sine.dat","r");
s=mfscanf (fd, "%s %s"); // Reads two words. The %s reads up to the first white space.
[n, x1, y1] =mfscanf (4, fd, "%d,%f"); // Reads the next four data set.
mclose(fd)
disp (y1, x1, n, s);

//Reading embedded data

fd=mopen("test.dat","r");
A=mfscanf(-1,fd,"Name:%3s,Age:%d,Weight:%f\n");
mclose(fd)
disp("The data from the test.dat file")
disp(A);
