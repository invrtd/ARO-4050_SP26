%% Thrust Constants Script (Thrust_const.m)
% This script defines the propulsion system parameters, including the
% number of engines, maximum thrust, and engine location coordinates
% relative to the aircraft's center of gravity (CG).

NumberOfEngines = 4;
T_Max0 = 56700;    % Maximum sea-level static thrust per engine (lbf)

% --- Engine Placement Geometry ---
% (x, y, z) coordinates of engines relative to CG

% Station coordinates along x-axis (ft)
x_T_in  = 27.1883; % Inboard (Engines 2 and 3)
x_T_out =  1.1857; % Outboard (Engines 1 and 4)

% Spanwise coordinates along y-axis (ft)
y_T_in  = 38.3914; % Inboard (Engines 2 and 3)
y_T_out = 68.5432; % Outboard (Engines 1 and 4)

% Vertical coordinates along z-axis (ft)
z_T_in  = 0.75;    % Inboard (Engines 2 and 3)
z_T_out = 0.50;    % Outboard (Engines 1 and 4)

% --- Thrust Alignment Angles ---
psi_T = 0.0;       % Thrust line yaw angle relative to x-axis (rad) - Assume zero for now
phi_T = 0.0;       % Thrust line pitch angle relative to x-axis (rad) - Assume zero for now

% Nacelle Inlet Radius
R_n = 7.7833; %ft