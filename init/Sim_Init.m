
displayON = true;
% Select which flight condition script to run
  B747NonDimFC1
% B747NonDimFC2
% B747NonDimFC3
% B5_NonDimFC1
% B5_NonDimFC3
% B3_NonDimFC3
% Now calculate all the dimensional derivatives for that FC
Calc_DimDerivs
% % Estimate 1st and 2nd Order Dynamic Mode Parameters
% Estimate_Modes
% % Calculate Long-Vert & Lat-Dir Stability Matrices
% Calc_StabMatrix
% %  Compute Long-Vert & Lat-Dir Transfer Functions
% Calc_XferFunc
% % Now do final Sim Init and Trim
% Sim_Trim
% %  Simulation is now fully initiated and ready to run.
% Tdoublet=2;
% %Kp_pitch = 0.9;
% %Kd_pitch = 2.5;
% %Kp_roll = 2.0;
% %Kd_roll = 1.0;
% Kp_pitch = 0.;
% Kd_pitch = 0.;
% Kp_roll = 0.0;
% Kd_roll = 0.0;