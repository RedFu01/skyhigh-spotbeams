function [ entered, left ] = compareLists( prevList, nextList )
%COMPARELISTS compares the two given list of aircraft keys
%   It returns a list of the aircraft which left the spotbeam and the
%   aircraft which entered the spotbeam

    entered = {};
    left = {};

    for i=1:length(prevList)
        current_ac = prevList(i);
        if(~listContains(nextList, current_ac))
            left(end+1,:) = current_ac;
        end
    end

    for i=1:length(nextList)
        current_ac = nextList(i);
        if(~listContains(prevList, current_ac))
            entered(end+1,:) = current_ac;
        end
    end
end

