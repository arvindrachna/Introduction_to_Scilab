//Simple if-else-end
flag=input ("Enter the value of flag:");
if flag then
    disp("True");
else
    disp("False");
end

//Ladder if-elseif-else-end example
a=input ("Enter marks:")
if a >=75 then
    disp("Honors");
elseif a>=60, //then replaced by a comma
    disp ("First division");
elseif a>=45 // then replaced by a space
    disp ("Second division"); 
elseif a>=35; // then replaced by a semicolon
    disp ("Third division"); 
else
    disp("Fail");
end
