// A program to directly writing and reading a matrix to/from a file.
A = rand (4,3);
fprintfMat ("MatrixA.txt", A, "%lg");
B = fscanfMat ("MatrixA.txt", "%lg");
disp(B);
