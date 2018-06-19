% myparameter should be provided in terminal
% run using:
% matlab -nodesktop -sd ~/Documents/MATLAB/matlab_on_server_test/ -r "myparameter=10;runme;exit"
% where the path is the path where "runme.m" is located
%

disp(['Hello World from Matlab disp, provided parameter: ' num2str(myparameter)])

% try to allocate GPU
g = gpuDevice;
g

% write into file
fileID = fopen('myoutput_gpu.txt','w');
fprintf(fileID,'Hello World from Matlab fprintf into file\n');
fprintf(fileID,'provided parameter: %f\n', myparameter);
fclose(fileID);

% do not forget to close matlab, we will not need it anymore
