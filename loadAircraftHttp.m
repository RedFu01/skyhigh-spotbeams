function [ aircraft ] = loadAircraftHttp( scenario, timestamp, varargin )
%LOADAIRCRAFTHTTP Summary of this function goes here
%   Detailed explanation goes here

    if(scenario ~= 'rural')
        error('At the moment only rural scenario is supported');
    end
    try
        if(length(varargin) > 0)
            port = varargin(1);
            
            url = strcat('http://localhost:', port, '/spotbeam?timestamp=',num2str(timestamp), '&db=skyhigh-spotbeam-pos_rural_200');
        else
            url = strcat('http://orion6:3000/spotbeam?timestamp=',num2str(timestamp), '&db=skyhigh-spotbeam-pos_rural_200');
        end
        url = strjoin(url, '');
        aircraft = webread(url);
   catch
        str = strcat('Data could not be loaded. Check if file exist.');
        error(str);
    end


end

