function [ aircraft ] = loadAircraft( scenario, timestamp )
%LOADAIRCRAFT Helper method to load data from a certain timestamp and
%scenario
%   It uses data stored in the data folder and parses the json file
    try
        fname = strcat('./data/', scenario, '/',num2str(timestamp),'.json');
        fid = fopen(fname);
        raw = fread(fid,inf);
        str = char(raw');
        fclose(fid);
        aircraft = jsondecode(str);
    catch
        str = strcat('Data could not be loaded. Check if file "', fname, '" exist.');
        error(str);
    end
end

