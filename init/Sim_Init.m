
displayON = true;
clear


Environmental_const
% Select which flight condition script to run
% B747NonDimFC1
% B747NonDimFC25
  B747NonDimFC3
  Sim6DOF_Init
% B5_NonDimFC1
% B5_NonDimFC3
% B3_NonDimFC3
% Now calculate all the dimensional derivatives for that FC
 Calc_DimDerivs
% Estimate 1st and 2nd Order Dynamic Mode Parameters
%Estimate_Modes
% Calculate Long-Vert & Lat-Dir Stability Matrices
% Calc_StabMatrix
%  Compute Long-Vert & Lat-Dir Transfer Functions
%  Calc_XferFunc
% Now do final Sim Init and Trim
%Sim_Trim
%  Simulation is now fully initiated and ready to run.
Tdoublet=2;
%Kp_pitch = 0.9;
%Kd_pitch = 2.5;
%Kp_roll = 2.0;
%Kd_roll = 1.0;
Kp_pitch = 0.;
Kd_pitch = 0.;
Kp_roll = 0.0;
Kd_roll = 0.0;
%%
x_T_in = 27.1883; % [ft]
y_T_in = 38.3914; % [ft]
z_T_in = 11.5761; % [ft]
x_T_out = 1.1857; % [ft]
y_T_out = 68.5432; % [ft]
z_T_out = 8.4480; % [ft]
psi_T = 0; % [rad] Assume zero for now
phi_T = 0; % [rad] Assume zero for now 
