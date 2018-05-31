// A program to save a matrix of random numbers as a CSV data file.
M = rand(3,3);
filename = "data.csv";
// Use tabs as the separator
csvWrite(M, filename,ascii(9),[],'%.3g');
disp('Read as numeric values');
//Read a CSV file
M1=csvRead(filename,ascii(9),[],"double");
disp(M1);
disp('Read as string values');
M2=csvRead(filename,ascii(9),[],"string");
disp(M2);
