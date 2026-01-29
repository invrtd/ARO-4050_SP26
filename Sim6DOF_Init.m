% THIS SCRIPT FILE WILL BE CALLED BY A HIGHER LEVEL SCRIPT NAMED Sim_Init.m
% Go find that higher level script on Canvas and see how you use this script to define global sim variables.

% Initialize all global aircraft variables here:
cbar = 28.7;       % feet
Sref = 4702;       % feet^2
D2R = pi/180;      % Rad/Deg
R2D = 180/pi;      % Deg/Rad
Span = 212.5;      % feet
Weight = 636636.0; % Pounds
g0 = 32.174;       % Ft/Sec^2
Mass = Weight/g0;  % Slugs
Ixx = 18.2e6;      % Slug-Ft^2
Iyy = 33.1e6;      % Slug-Ft^2
Izz = 49.7e6;      % Slug-Ft^2
Ixz = 0.97e6;      % Slug-Ft^2

% Sea Level Temp/Press/Dens (Does not need to be standard day!)
Rair = 1716.0;     % (Ft-Lb)/(Slug-R)
T0 = 518.69;       % R
mu0 = 3.62e-7;     % Lb-Sec/Ft^2
P0 = 2116.2;       % Lb/Ft^2
Rho0 = 0.002377;   % Slug/Ft^3
aLR = -0.00349;     % R/Ft
% Add a call to another m file to initialize all LONG-VERT data here:


% Add a call to another m file to initialize all LAT-DIR data here:
% I used the Flight Condition #2 (High Altitude Cruise)
Clbeta = -0.095; % 1/Rad
Clp = -0.320;  % 1/Rad
Clr = 0.20;    % 1/Rad
CldA = 0.014;  % 1/Rad
CldR = 0.005;  % 1/Rad

Cnbeta = 0.210; % 1/Rad
Cnp = 0.020;    % 1/Rad
Cnr = -0.33;    % 1/Rad
CndA = -0.0028; % 1/Rad
CndR = -0.095;  % 1/Rad

Cybeta = -0.90; % 1/Rad
Cyp = 0.0; % 1/Rad
Cyr = 0.0; % 1/Rad
CydA = 0.0;  % 1/Rad
CydR = 0.60; % 1/Rad

% Add a call to the simulation trim algorithm m file here:
%
% 

% The following stab trim setting is only for initial testing.  Use this
% variable in your Simulink models, or replace as you see fit.
StabTrimPos = 5.5;        % Horizontal Stabilizer Setting (+ = Nose Up Trim)
EngineThrustCMD = 85.0;   % N1 Fan Speed  (100% Max, 0% Min)
u0 = 400.0 ; % Ft/Sec
v0 = 0.0;    % Ft/Sec
w0 = 0.0;    % Ft/Sec
p0 = 0;      % Rad/Sec
q0 = 0;      % Rad/Sec
r0 = 0;      % Rad/Sec
