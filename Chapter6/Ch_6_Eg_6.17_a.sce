// A program to illustrate the formatted output using mfprintf function in a file.

x=[0:45:180]';
y=sin(x);
fd=mopen("sine.dat","w");
mfprintf (fd, "Default format\n");
mfprintf (fd, "%d,%f\n", x, y);
mfprintf (fd, "Width specified format\n");
mfprintf (fd,"%4d,%8.3f\n", x, y);
mfprintf (fd, "Hex decimal format for integers\n");
mfprintf (fd,"%4X,%8.3f\n", x, y);
mfprintf (fd, "Exponential format\n");
mfprintf (fd,"%12.3e,%12.3e\n", x, y);
mclose(fd);
