function [ result ] = listContains( list, aircraft )
%LISTCONTAINS Checks if a certain aircaft key is in a list 
%   Usefull to determine which aircraft entered or left the cell

result = 0;
    for i=1:length(list)
        result = result || strcmp(list(i), aircraft);
    end

end

