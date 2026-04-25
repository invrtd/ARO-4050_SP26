%Estimate_Modes.m calculates the 1st and 2nd order
%Lower Order Equivalent System (LOES) dynamic mode estimates
%(time constants, natural frequencies, and damping ratios)
%for both VERT and LONG

% Phugoid Approximation
omega_phu = (-1*Z_u*g0/u0)^0.5; %rad/sec

zeta_phu = -1*X_u/(2*omega_phu);

% Short Period Approximation
omega_sp = (M_q*(Z_alpha/u0)-M_alpha); %rad/sec

zeta_sp = -1*(M_q+M_alpha_dot+(Z_alpha/u0))/(2*omega_sp);

% Dutch Roll Approximation
omega_dr = ((Y_beta*N_r-N_beta*Y_r+u0*N_beta)/u0)^0.5; %rad/sec

zeta_dr = -1*((1/(2*omega_dr))*(Y_beta+u0*N_r)/u0);

% Roll Time Constant Approximation
tau_r = -1/L_p; %sec

% Spiral Time Constant Approximation
lambda_spiral = (L_beta*N_r-L_r*N_beta)/L_beta;
T_spiral = -1/lambda_spiral; %sec



%% Fixing Vert pert blocks
CD_row = [ ...
    -(CD_u + 2*CD1),  -CD_alpha + CL1,   0,   0,   -CD_delEle ...
]

CL_row = [ ...
    -(CL_u + 2*CL1),  -CL_alpha - CD1,  -CL_alphdot,  -CL_q,  -CL_delEle ...
]

CM_row = [ ...
     (CM_u + 2*CM1),   CM_alpha,   CM_alphdot,   CM_q,   CM_delEle ...
]