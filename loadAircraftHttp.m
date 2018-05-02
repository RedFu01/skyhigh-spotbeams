function [ aircraft ] = loadAircraftHttp( scenario, timestamp, varargin )
%LOADAIRCRAFTHTTP Summary of this function goes here
%   Detailed explanation goes here

    if(scenario ~= 'rural')
        error('At the moment only rural scenario is supported');
    end
    try
        if(length(varargin) > 0)
            port = varargin(1);
            
            url = strcat('http://localhost:', port, '/spotbeam?timestamp=',num2str(timestamp), '&db=skyhigh-spotbeam-pos_rural_150');
            url = strjoin(url, '');
        else
            url = strcat('http://orion6:3000/spotbeam?timestamp=',num2str(timestamp), '&db=skyhigh-spotbeam-pos_rural_150');
        end
        aircraft = webread(url);
   catch
        %str = strcat('Data could not be loaded. Check if file exist.');
        error('Something went wrong, are you connected to orion6? (ssh -L 3000:134.28.85.147:3000 <name>@ssh.et6.tu-harburg.de)');
   end


end

