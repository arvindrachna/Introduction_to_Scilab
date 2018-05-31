// A program to illustrate various error handling approaches.
a='Error handling';
errcatch(144,"continue")
2/"foo"  // The line causing error 144, i.e. operation not defined for the data
disp(a) // Without the errcatch, this line would not be executed

errcatch(144,"pause")
2/"foo" 
// Entered in the "pause" mode, type resume command to continue.

errcatch(27,'continue','nomessage')
b=2/0 // No error message is displayed, but b will not exist
c=100;
disp(c);

errcatch(-1,"kill") // Comes back in the normal mode and handle all the errors

disp(6+7);
d=2/"foo"; // Program terminates here.
disp(c); // This line is not executed
