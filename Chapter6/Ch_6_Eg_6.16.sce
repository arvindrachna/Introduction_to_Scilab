// A program to write and read y=4*sin(x) values to/from the file named sine_table.txt.
fd = mopen('sine_table.txt', "w")             //creates a file in write mode
mfprintf(fd,"Sin curve values\n");        // writes the table header
mfprintf(fd,"----------------\n");
x=(-%pi:.5:%pi)';
mfprintf(fd,"%6.3f %6.3f\n",x,4*sin(x))     // writing values to the file
mclose(fd);                                            //closing the file pointer      

//read the same file line by line

fd = mopen('sine_table.txt', "r")
txt=mgetl(fd,-1)               //reads lines from the text file, -1 means read all lines
mclose(fd)
