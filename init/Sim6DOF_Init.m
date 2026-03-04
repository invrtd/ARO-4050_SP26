% THIS SCRIPT FILE WILL BE CALLED BY A HIGHER LEVEL SCRIPT NAMED Sim_Init.m
% Go find that higher level script on Canvas and see how you use this script to define global sim variables.

% Initialize all global aircraft variables here:

Sref = 5500;       % feet^2
D2R = pi/180;      % Rad/Deg
R2D = 180/pi;      % Deg/Rad
Span = 196;      % feet

g0 = 32.174;       % Ft/Sec^2



% Sea Level Temp/Press/Dens (Does not need to be standard day!)
Rair = 1716.0;     % (Ft-Lb)/(Slug-R)
T0 = 518.69;       % R
mu0 = 3.62e-7;     % Lb-Sec/Ft^2
P0 = 2116.2;       % Lb/Ft^2
Rho0 = 0.002377;   % Slug/Ft^3
aLR = -0.00349;     % R/Ft

% Add a call to another m file to initialize all LONG-VERT data here:
Vert_thrust_vars

% Add a call to another m file to initialize all LAT-DIR data here:



% Add a call to the simulation trim algorithm m file here:
%
% 

% The following stab trim setting is only for initial testing.  Use this

% variable in your Simulink models, or replace as you see fit.
StabTrimPos = 5.5;        % Horizontal Stabilizer Setting (+ = Nose Up Trim)
EngineThrustCMD = 85.0;   % N1 Fan Speed  (100% Max, 0% Min)


u01 = 871.0 ; % Ft/Sec
v0 = 0.0;    % Ft/Sec
w0 = U1*tan(deg2rad(alpha));    % Ft/Sec
p0 = 0;      % Rad/Sec
q0 = 0;      % Rad/Sec
r0 = 0;      % Rad/Sec
Phi0=0;
Psi0=0;
Theta0=0;