% This example displays the usage of data loading

clear all;
close all;
startTime = 1396389610 + 1 * 60 * 60;
deltaT = 10;
endTime = 1396389610 + 23 * 60 * 60;

scenario = 'rural';

ac_count = [];

for t=startTime:deltaT:endTime
    ac_list = loadAircraft(scenario, t);
    ac_count(end+1) = length(ac_list);
end

plot(ac_count);