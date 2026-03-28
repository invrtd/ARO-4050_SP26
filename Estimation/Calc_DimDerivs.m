%% Dimensional Derivatives Calculation Script (Calc_DimDerivs.m)
% This script computes the dimensional stability derivatives from the 
% non-dimensional aerodynamic coefficients, mass properties, and flight 
% conditions defined in previous initialization scripts.

% =========================================================================
% --- Longitudinal Stability Derivatives ---
% =========================================================================

% --- Axial Force Derivatives ---
X_u         = -(Qbar * Sref * (2*CD1 + CD_u)) / (Mass * U1);
X_alpha     =  (Qbar * Sref * (CL1 - CD_alpha)) / Mass;
X_T_u       =  (Qbar * Sref*(CT_x_u + 2*CT_x1)) / (Mass * U1); % Added for tf script
X_delEle     = -(Qbar * Sref * CD_delEle) / Mass; % Added for tf script

% --- Normal Force Derivatives ---
Z_u         = -(Qbar * Sref * (2*CL1 + CL_u)) / (Mass * U1);
Z_alpha     = -(Qbar * Sref * (CL_alpha + CD1)) / Mass;
Z_alpha_dot = -(Qbar * Sref * Cbar * CL_alphdot) / (2 * Mass * U1);
Z_q          = -(Qbar * Sref * Cbar * CL_q) / (2 * Mass * U1); % Added for tf script
Z_delEle    = -(Qbar * Sref * CL_delEle) / Mass; % Added for tf script

% --- Pitching Moment Derivatives ---
M_u         =  (Qbar * Sref * Cbar * CM_u) / (Iyy * U1);
M_T_u       =  (Qbar * Sref * Cbar * (CM_t_u + 2*CM_t1)) / (Iyy * U1); % Added for tf script
M_alpha     =  (Qbar * Sref * Cbar * CM_alpha) / Iyy;
M_T_alpha   =  (Qbar * Sref * Cbar * CM_t_alph) / Iyy; % Added for tf script
M_q         =  (Qbar * Sref * (Cbar^2) * CM_q) / (2 * Iyy * U1);
M_alpha_dot =  (Qbar * Sref * (Cbar^2) * CM_alphdot) / (2 * Iyy * U1);
M_delEle    =  (Qbar * Sref * Cbar * CM_delEle) / Iyy; % Added for tf script

% =========================================================================
% --- Lateral-Directional Stability Derivatives ---
% =========================================================================

% --- Side Force Derivatives ---
Y_beta = (Qbar * Sref * CY_beta) / Mass;
Y_p    = (Qbar * Sref * Span * CY_p) / (2 * Mass * U1);
Y_r    = (Qbar * Sref * Span * CY_r) / (2 * Mass * U1);
Y_delAil = (Qbar * Sref * CY_delAil) / Mass; % Added for tf script
Y_delRud = (Qbar * Sref * CY_delRud) / Mass; % Added for tf script

% --- Rolling Moment Derivatives ---
L_beta = (Qbar * Sref * Span * CL_beta) / Ixx;
L_p    = (Qbar * Sref * (Span^2) * CL_p) / (2 * Ixx * U1);
L_r    = (Qbar * Sref * (Span^2) * CL_r) / (2 * Ixx * U1);
L_delAil = (Qbar * Sref * Span *CL_delAil) / Ixx; % Added for tf script
L_delRud = (Qbar * Sref * Span *CL_delRud) / Ixx; % Added for tf script

% --- Yawing Moment Derivatives ---
N_beta = (Qbar * Sref * Span * CN_beta) / Izz;
N_T_beta = (Qbar * Sref * Span * CN_t_beta) / Izz; % Added for tf script
N_p    = (Qbar * Sref * (Span^2) * CN_p) / (2 * Izz * U1);
N_r    = (Qbar * Sref * (Span^2) * CN_r) / (2 * Izz * U1);
N_delAil = (Qbar * Sref * Span * CN_delAil) / Izz; % Added for tf script
N_delRud = (Qbar * Sref * Span * CN_delRud) / Izz; % Added for tf script