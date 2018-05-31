// A program to find the largest of three given numbers.
x=input ("Enter a vector of three numbers:");
s="The largest number is ";
if x (1)>x (2) then
    if x (1)>x (3) then
        s=s + string (x (1));
    else
        s=s + string (x (2));
    end
else
    if x (2)>x (3) then
        s=s + string (x (2));
    else
        s=s + string (x (3));
    end
end
disp(s);
