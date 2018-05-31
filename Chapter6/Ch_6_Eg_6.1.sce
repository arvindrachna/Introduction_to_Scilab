// Calculates the area of a Circle. Prompts for the radius and the unit of the radius.

radius=input ('Enter the radius of the circle: ');
unit=input ('Enter the unit of the entered radius (as a string): ');
area=%pi*radius^2;
s=msprintf ("\r%s:%f %s %s", 'The Area of the circle is ',area, 'square', unit);
disp(s);
