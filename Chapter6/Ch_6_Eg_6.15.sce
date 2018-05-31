// A program to select a color from the given colors, using GUI.
n=x_choose (['Red'; 'Green'; 'Blue'], ['Select a color'])
select n
  case 1
    disp ('You chose- Red')
  case 2
    disp ('You chose - Green')
  case 3
    disp ('You chose - Blue')
  else
    disp ('Sorry, you canceled the color selection!');
end
