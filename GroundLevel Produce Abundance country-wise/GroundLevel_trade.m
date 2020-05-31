%Team GroundLevel

%This code shades the various countries in South East Asia defining their 
%consumption levels and hence indicating where there is a surplus/deficit 
%of resources
%An example code from the documentation of function 'patchsc' was used to
%implement this feature, with very minor changes in the data used. All
%credits belong to Chad Greene, the owner of patchsc. The data used can be
%found in the file tradedata.mat in the repository. 

load emissions

figure('pos',[100 100 560 320])
patchsc(lon,lat,emissions_per_capita)
colorbar
title('Map showing surplus/deficit of rice in SEA countries')
