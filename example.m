% This example displays the usage of data loading

clear all;
close all;
startTime = 1391212720 + 0 * 60 * 60;
deltaT = 60*10;
endTime = 1391212720 + 20 * 60 * 60;

% data is available from 1391295610 (02-04-2014) to 1392245610 (12-04-2014)
% for rural

% data is available from 1391212720 (02-04-2014) 
% for urban

% data is available from 1391212720 (02-04-2014) 
% for inter

scenario = 'frankfurt';

ac_count = [];

for t=startTime:deltaT:endTime
    % specify the scenario, the timestamp and the port of your local
    % machine tunneld to port 3000 of orion6 (omit if you're in the same network as orion6)
    ac_list = loadAircraftHttp(scenario, t, '3000');
    ac_count(end+1) = length(ac_list);
end

plot(ac_count);