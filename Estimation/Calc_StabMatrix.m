%% Longitudinal Stability Matrix

% Convert alpha-derivatives to w-derivatives (Roskam Eq. 4.11: w = U1*alpha)
Xw = X_alpha / U1;
Zw = Z_alpha / U1;
Mw = M_alpha / U1;

% Quasi-steady alpha-dot terms (Roskam Eq. 5.38)
Zwdot = -(Qbar * Sref * Cbar * CL_alphdot)   / (2 * Mass * U1^2);
Mwdot =  (Qbar * Sref * Cbar^2 * CM_alphdot) / (2 * Iyy  * U1^2);
dZ    = 1 - Zwdot;

% Z-force due to pitch rate 
Zq = -(Qbar * Sref * Cbar * CL_q) / (2 * Mass * U1);

% Trim pitch angle
theta1 = alpha * (pi/180);   % (deg to rad)

% Modified Z-row elements (divided by dZ)
Zu_m =  Z_u       / dZ;
Zw_m =  Zw        / dZ;
Zq_m = (Zq + U1)  / dZ;
Zg_m = -g0 * sin(theta1) / dZ;

% Modified M-row elements 
Mu_m = M_u  + Mwdot * Zu_m;
Mw_m = Mw   + Mwdot * Zw_m;
Mq_m = M_q  + Mwdot * Zq_m;
Mg_m =        Mwdot * Zg_m;

% A_long [4x4] -- state: [ u  w  q  theta ]
A_long = [ X_u,   Xw,    0,      -g0*cos(theta1) ;
           Zu_m,  Zw_m,  Zq_m,    Zg_m           ;
           Mu_m,  Mw_m,  Mq_m,    Mg_m           ;
           0,     0,     1,        0              ];

%% Lateral-Directional Stability Matrix

% Convert beta-derivatives to v-derivatives (Roskam Eq. 4.11: v = U1*beta)
Yv = Y_beta / U1;
Lv = L_beta / U1;
Nv = N_beta / U1;

% Ixz coupling (Roskam Sec. 5.8)
Gamma = Ixx*Izz - Ixz^2;

% Primed roll derivatives
LvP = (Izz*Lv  + Ixz*Nv)  / Gamma;
LpP = (Izz*L_p + Ixz*N_p) / Gamma;
LrP = (Izz*L_r + Ixz*N_r) / Gamma;

% Primed yaw derivatives
NvP = (Ixx*Nv  + Ixz*Lv)  / Gamma;
NpP = (Ixx*N_p + Ixz*L_p) / Gamma;
NrP = (Ixx*N_r + Ixz*L_r) / Gamma;

% A_lat [4x4] -- state: [ v  p  r  phi ]
A_lat = [ Yv,   Y_p,  (Y_r - U1),   g0*cos(theta1) ;
          LvP,  LpP,   LrP,          0              ;
          NvP,  NpP,   NrP,          0              ;
          0,    1,     0,            0              ];