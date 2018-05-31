// A program illustrating the use of a global variable.

function A()
    global counter
    disp('In function A');
    counter = counter + 1
endfunction

function B()
    global counter
    disp('In function B');
    counter = counter + 1
endfunction

function printCounter()
    global counter
    disp(counter)
endfunction

global counter
counter = 0;      //Initialization of the global variable counter
A();
B();
A();
printCounter();
A();
B();
printCounter();
