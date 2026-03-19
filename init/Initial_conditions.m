%% Initial Conditions Script (Initial_conditions.m)
% This script sets up the initial flight state variables for the 6-DOF
% simulation based on the selected flight condition parameters.

% --- Translational Velocities ---
u0 = U1;                    % Body-axis x-velocity (Ft/Sec)
v0 = 0.0;                   % Body-axis y-velocity (Ft/Sec) - Assume zero initial sideslip
w0 = u0 * tand(alpha);      % Body-axis z-velocity (Ft/Sec) - Based on initial trim angle of attack

% --- Angular Rates ---
p0 = 0.0;                   % Roll rate (Rad/Sec)
q0 = 0.0;                   % Pitch rate (Rad/Sec)
r0 = 0.0;                   % Yaw rate (Rad/Sec)

% --- Euler Angles ---
Phi0   = 0.0;               % Roll angle (Rad)
Psi0   = 0.0;               % Yaw/Heading angle (Rad)
Theta0 = deg2rad(alpha);    % Pitch angle (Rad) - Set to match angle of attack for trim
