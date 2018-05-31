//Use of the x_mdialog function.
labels=['magnitude'; 'frequency'; 'phase'];


//The first format

sig=x_mdialog ('enter sine signal', labels, ['1';'10';'0'])


labelsh= ['magnitude'; 'frequency'; 'phase'];
labelsv= ['sine wave'; 'cosine wave';];
title=['Enter details for both signals'];

//The Second format

rep=x_mdialog (title, labelsv, labelsh, ['1','10','0';'1','10','0']);
