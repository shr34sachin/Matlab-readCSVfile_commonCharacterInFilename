% June 09, 2016
% Sachin Shrestha
% Email: shr34.sachin@gmail.com
%
% Description:
%       Matlab script to read the csv file, with common characters in
%       filename.
%       For e.g. to read the csv files starting with SampleCSV1_ like
%       SampleCSV1_1, SampleCSV1_2, SampleCSV1_3 etc from the folder
%       containing a lot of csv files starting with other names.
%       In MSDOS there is a wild card which is *, and a question mark 
%       replaces the characters alike ??????*.csv.

%% 
sourceDir = 'D:\OneDrive\projects\Mathworks-Profile\csv files'; % location of your csv files
sourceFiles = dir(fullfile(sourceDir, '*.csv'));    % filters for the csv files
characters2Check = 'SampleCSV1_';           % the characters of the file name to be checked

for i=1:numel(sourceFiles)                  % loop around for all the csv files of folder
    sourceFileName = sourceFiles(i).name;   % extracts the name of the csv file
    if(strcmp(sourceFileName(1:length(characters2Check)),characters2Check))     % checks the presence of characters
        fullName=[sourceDir '\' sourceFileName];                                % define path and filename
        [num,others] = xlsread(fullName);
        % --- do whatever you want to do with obtained values
        % ---
    end
end

