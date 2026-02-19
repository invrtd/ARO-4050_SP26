 %Longtitudinal Derivative
 %Axial
 X_u         = -(Qbar * Sref * (2*CD1 + CD_u)) / (m * tas);
 X_alpha     =  (Qbar * Sref * (CL1 - CD_alpha)) / m;

 %Normal
 Z_u         = -(Qbar * Sref * (2*CL1 + CL_u)) / (m * tas);
 Z_alpha     = -(Qbar * Sref * (CL_alpha + CD1)) / m;

 %Pitching
 M_u         =  (Qbar * Sref * cbar * CM_u) / (Iyy * tas) ;
 M_alpha     =  (Qbar * Sref * cbar * CM_alpha) / Iyy;
 M_q         =  (Qbar * Sref * (cbar^2) * CM_q) / (2 * Iyy * tas);
 M_alpha_dot =  (Qbar * Sref * (cbar^2) * CM_alpha) / (2 * Iyy * (tas));

%Latitudinal Derivative
 %Side
 Y_beta = (Qbar * Sref * CY_beta) / m;
 Y_p    = (Qbar * Sref * Span * CY_p) / (2 * m * tas);
 Y_r    = (Qbar * Sref * Span * CY_r) / (2 * m * tas);
 %Roll
 L_beta = (Qbar * Sref * Span * CL_beta) / Ixx;
 L_p    = (Qbar * Sref * (Span^2) * CL_p) / (2 * Ixx * tas);
 L_r    = (Qbar * Sref * (Span^2) * CL_r) / (2 * Ixx * tas);
 %Yaw
 N_beta = (Qbar * Sref * Span * CN_beta) / Izz;
 N_p    = (Qbar * Sref * (Span^2) * CN_p) / (2 * Izz * tas);
 N_r    = (Qbar * Sref * (Span^2) * CN_r) / (2 * Izz * tas);