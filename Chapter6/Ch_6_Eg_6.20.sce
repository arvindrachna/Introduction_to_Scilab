// A program to read the specified number of lines from a file.
txt=mgetl("sine.dat",4) // Opens and reads the first four lines of the sine.dat file and closes the file.
fd=mopen("sine.dat","r"); // Reopens the sine.dat file for reading.
t1=mgetl(fd,4) // Reads the first four lines again from the beginning.
t2=mgetl(fd,4) // Try to read the next four lines, but returns only two lines as there were only six lines in the file.
mclose(fd);
