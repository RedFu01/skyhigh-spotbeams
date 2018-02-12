clear all;
close all;

ac_list = loadAircraft('example', 0);

assert(length(ac_list) == 4, 'The list should contain 4 aircraft');
assert(listContains(ac_list, 'aircraft_1'), 'aircaft_1 should be in the list');
assert(listContains(ac_list, 'aircraft_2'), 'aircaft_2 should be in the list');
assert(listContains(ac_list, 'aircraft_3'), 'aircaft_3 should be in the list');
assert(~listContains(ac_list, 'aircraft_12'), 'aircaft_12 should not be in the list');

disp('All tests passed.');