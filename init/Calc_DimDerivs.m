%Longtitudinal Derivative
 %Axial
 X_u         = -(qbar * Sref * (2*CD1 + CD_u)) / (m * tas);
 X_alpha     =  (qbar * Sref * (CL1 - CD_alpha)) / m;

 %Normal
 Z_u         = -(qbar * Sref * (2*CL1 + CL_u)) / (m * tas);
 Z_alpha     = -(qbar * Sref * (CL_alpha + CD1)) / m;

 %Pitching
 M_u         =  (qbar * Sref * cbar * CM_u) / (Iyy * tas) ;
 M_alpha     =  (qbar * Sref * cbar * CM_alpha) / Iyy;
 M_q         =  (qbar * Sref * (cbar^2) * CM_q) / (2 * Iyy * tas);
 M_alpha_dot =  (qbar * Sref * (cbar^2) * CM_alpha) / (2 * Iyy * (tas));

%Latitudinal Derivative
 %Side
 Y_beta = (qbar * Sref * CY_beta) / m;
 Y_p    = (qbar * Sref * Span * CY_p) / (2 * m * tas);
 Y_r    = (qbar * Sref * Span * CY_r) / (2 * m * tas);
 %Roll
 L_beta = (qbar * Sref * Span * CL_beta) / Ixx;
 L_p    = (qbar * Sref * (Span^2) * CL_p) / (2 * Ixx * tas);
 L_r    = (qbar * Sref * (Span^2) * CL_r) / (2 * Ixx * tas);
 %Yaw
 N_beta = (qbar * Sref * Span * CN_beta) / Izz;
 N_p    = (qbar * Sref * (Span^2) * CN_p) / (2 * Izz * tas);
 N_r    = (qbar * Sref * (Span^2) * CN_r) / (2 * Izz * tas);