// A program to illustrate a use of a try-catch statement.
function test_try(a)
    disp("START")
    mprintf ("\ta is %s\n", string(a));
    try
        disp ("Executing normal code")
        c=a+10; // Error when a is a string
        disp(c);
    catch
        disp ("Error occurred")
    end
    disp("END");
endfunction
// Main program
test_try(10);
test_try('a'); // Calling the function with an argument with wrong data type.
