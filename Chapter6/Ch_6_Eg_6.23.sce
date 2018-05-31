[fd, SST, Sheetnames, Sheetpos] = xls_open("book1.xls");
s= ['The number of sheets are:', string(size(Sheetnames,2)), ' and their names are:', Sheetnames];
disp(s);
[Value, TextInd] = xls_read (fd, Sheetpos (1));
mclose(fd);
a=Value(TextInd(:)==0); // Extracting the numeric values
s= ['The numeric values in the Excel sheet are:', string(a')];
disp (s);
disp (['The strings in the sheet are:', SST]);

age=Value(2:$,2); // Extracting the second column’s numeric data
Weight=Value(2:$,3); // Extracting the third column’s numeric data
Height=Value(2:$,4); // Extracting the fourth column’s numeric data
Name=[SST(TextInd(2:$,1))]'; // Extracting names from the first column 
BMI=10000*Weight./(Height.^2);
str=msprintf ("%-10s%5.2f\n", Name, BMI);
s=msprintf ("%-10s%s\n", "Name", "BMI");
s1= [s; str];
disp(s1);
