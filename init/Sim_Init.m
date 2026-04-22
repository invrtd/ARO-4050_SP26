%% Simulation Initialization Script (Sim_Init.m)
% This script initializes the 6-DOF simulation by loading constants,
% selecting the flight condition, computing initial states, calculating
% dimensional stability derivatives, and setting control surface and engine trims.

displayON = true;
clear

% Load Engine and Environmental Constants
Thrust_const
Environmental_const

% Select which flight condition script to run
% B747NonDimFC1  % Approach Flight Condition
% B747NonDimFC2 % Mid-Cruise Flight Condition
B747NonDimFC3    % High Speed Cruise Flight Condition



% --- Initial Trim Settings ---
tolerance =1e-5;
max_iters=60;
% StabTrimPos = -1.516;      % Horizontal Stabilizer Setting (+ = Nose Up Trim, deg or rad depending on model)
% EngineThrustCMD = 0.793;   % N1 Fan Speed (1.0 = 100% Max, 0.0 = 0% Min

% alpha            = 2.482647; old values unsure why changed even without
% StabTrimPos      = -1.549884; purturbed being enabled
% EngineThrustCMD  = 0.814704;
alpha            = 2.546935;
StabTrimPos      = -1.590305;
EngineThrustCMD  = 0.825406;
% Set Initial Conditions
Initial_conditions

% B5_NonDimFC1
% B5_NonDimFC3
% B3_NonDimFC3

% Now calculate all the dimensional derivatives for that FC
 Calc_DimDerivs

% Estimate 1st and 2nd Order Dynamic Mode Parameters
Estimate_Modes

% Calculate Long-Vert & Lat-Dir Stability Matrices
 Calc_StabMatrix

% Compute Long-Vert & Lat-Dir Transfer Functions
 Calc_XferFunc


% --- Simulation Inputs ---
ActTC    = 0.3;      % Actuator Time Constant

% Now do final Sim Init and Trim
% Sim_Trim


% Simulation is now fully initiated and ready to run.
Tdoublet = 2;        % Time for doublet input

% --- Control Gains ---
%Kp_pitch = 0.9;
%Kd_pitch = 2.5;
%Kp_roll  = 2.0;
%Kd_roll  = 1.0;
Kp_pitch = 0.0;
Kd_pitch = 0.0;
Kp_roll  = 0.0;
Kd_roll  = 0.0;
Ktheta = 7;
Kthetadot = 2.9;
% --- LOES Gains ---
Kp_pitch_LOES = 0.5;
