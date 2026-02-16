%Longtitudinal Derivative
 %Axial
 X_u         = -(qbar * Sref * (2*CD1 + CDu)) / (m * U1)
 X_alpha     =  (qbar * Sref * (CL1 - CDalpha)) / m

 %Normal
 Z_u         = -(qbar * Sref * (2*CL1 + CLu)) / (m * U1)
 Z_alpha     = -(qbar * Sref * (CLalpha + CD1)) / m

 %Pitching
 M_u         =  (qbar * Sref * cbar * CMu) / (Iyy * U1) 
 M_alpha     =  (qbar * Sref * cbar * CMalpha) / Iyy
 M_q         =  (qbar * Sref * (cbar^2) * CMq) / (2 * Iyy * U1)
 M_alpha_dot =  (qbar * Sref * (cbar^2) * CMalpha) / (2 * Iyy * (U1))

%Latitudinal Derivative
 %Side
 Y_beta = (qbar * Sref * CYbeta) / m
 Y_p    = (qbar * Sref * Span * CYp) / (2 * m * U1)
 Y_r    = (qbar * Sref * Span * Cyr) / (2 * m * U1)
 %Roll
 L_beta = (qbar * Sref * Span * CLbeta) / Ixx
 L_p    = (qbar * Sref * (Span^2) * CLp) / (2 * Ixx * U1)
 L_r    = (qbar * Sref * (Span^2) * CLr) / (2 * Ixx * U1)
 %Yaw
 N_beta = (qbar * Sref * Span * CNbeta) / Izz
 N_p    = (qbar * Sref * (Span^2) * CNp) / (2 * Izz * U1)
 N_r    = (qbar * Sref * (Span^2) * CNr) / (2 * Izz * U1)
