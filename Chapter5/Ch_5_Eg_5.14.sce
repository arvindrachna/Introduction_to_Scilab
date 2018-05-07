//To plot different types of histograms in a graphics window
d=rand(1,10000,'normal');      // the Gaussian random sample
subplot (2,2,1); histplot (20, d); xtitle ("Normalised Histogram");
subplot (2,2,2); histplot (20, d, normalization=%f); xtitle ("Regular Histogram");
subplot (2,2,3); histplot (20, d, style=5); xtitle ("Color Changed");
c=0:4;
subplot (2,2,4); histplot (c, d, style=3); xtitle ("Portion of Normalised Histogram");
