// for loop syntax 1
// Increment for loop
clear ;
for i=1:1:5
    a(i)=i;
end
disp(a);

//Decrement for loop
for i=5:-1:1
    a(5-i+1)=i;
end
disp(a);

//Null for loop
for i=5:1:1
    disp(i);
end

// for loop syntax 2
a=[2,3,1,4]
for i=a
    disp(i);
end

// Loop nesting
for i=1:1:4
    for j=1:1:3
        b(i, j)=i*j;
    end
end
disp(b);

//loop on matrix columns
for e=eye (3,3), e, end

//loop on list entries
for l=list(1,2,'example');l, end
