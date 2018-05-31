// A program to illustrate the uses of mprintf function.

mprintf('There are %d students in %s with weight less than %8.2f kg.',20,"the class", 52.5);
mprintf('\n%e ', [1; 2; 3]);// printing a vector
mprintf('\n%d %d\n', [1, 2; 3, 4]);// printing a matrix

// Uses of msprintf  function

str1= msprintf('There are %d students in %s with weight less than %f.',20,"the class", 52.5);
str2= msprintf('%e ', [1; 2; 3]);// printing a vector
str3= msprintf('%d %d\n', [1, 2; 3, 4]);// printing a matrix
disp(str1);
disp(str2);
disp(str3);
