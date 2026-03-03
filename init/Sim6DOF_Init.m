% THIS SCRIPT FILE WILL BE CALLED BY A HIGHER LEVEL SCRIPT NAMED Sim_Init.m
% Go find that higher level script on Canvas and see how you use this script to define global sim variables.

% Initialize all global aircraft variables here:




T_Max0 = 56700; % pounds force

% Add a call to another m file to initialize all LONG-VERT data here:

% Add a call to another m file to initialize all LAT-DIR data here:

% variable in your Simulink models, or replace as you see fit.
StabTrimPos = 5.5;        % Horizontal Stabilizer Setting (+ = Nose Up Trim)
EngineThrustCMD = 85.0;   % N1 Fan Speed  (100% Max, 0% Min)
NumberOfEngines = 4;

u01 = 871.0 ; % Ft/Sec
v0 = 0.0;    % Ft/Sec
w0 = 0.0;    % Ft/Sec
p0 = 0;      % Rad/Sec
q0 = 0;      % Rad/Sec
r0 = 0;      % Rad/Sec
