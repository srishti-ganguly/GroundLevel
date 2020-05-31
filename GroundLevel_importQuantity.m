%Team GroundLevel

%This code reads the data on import/export value for various countries from 
%an excel sheet and represents it in a map, with varying-sized bubbles 
%representing the places where the particular produce is imported from. The
%user would need to specify the name of the Excel sheet (or the name of the
%country). The excel sheets used are attached in the repository. For e.g, the
%following code shows the map for Thailand.

data = readtable('Cambodia.xlsx')
colordata = categorical(data.Produce);
gb = geobubble(data.Latitude, data.Longitude, data.ImportQuantity, colordata)
geobasemap topographic
gb.SizeLegendTitle = 'Tonnes';
gb.ColorLegendTitle = 'Produce type';
nzoom = 4.5;
gb.ZoomLevel = nzoom;
countryarray = data.ReporterCountries;
country = countryarray{1};
title(sprintf('Quantity of produce imported by %s', country))



