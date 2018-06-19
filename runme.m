% myparameter should be provided in terminal
% run using:
% matlab -nodesktop -nosplash -sd ~/Documents/MATLAB/matlab_on_server_test/ -r "myparameter=10;runme"
% where the path is the path where "runme.m" is located
%

disp(['Hello World from Matlab disp, provided parameter: ' num2str(myparameter)])

% write into file
fileID = fopen('myoutput.txt','w');
fprintf(fileID,'Hello World from Matlab fprintf into file\n');
fprintf(fileID,'provided parameter: %f\n', myparameter);
fclose(fileID);

% close matlab, we will not need it anymore
exit 
