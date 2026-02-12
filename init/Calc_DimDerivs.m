%Longtitudinal Derivative
 %Axial
 X_u         = -(qbar * S * (2*CD1 + CDu)) / (m * U1)
 X_alpha     =  (qbar * S * (CL1 - CDalpha)) / m

 %Normal
 Z_u         = -(qbar * S * (2*CL1 + CLu)) / (m * U1)
 Z_alpha     = -(qbar * S * (CLalpha + CD1)) / m

 %Pitching
 M_u         =  (qbar * S * cbar * CMu) / (Iyy * u1) 
 M_alpha     =  (qbar * S * cbar * CMalpha) / Iyy
 M_q         =  (qbar * S * (cbar^2) * CMq) / (2 * Iyy * U1)
 M_alpha_dot =  (qbar * S * (cbar^2) * CMalpha) / (2 * Iyy * (U1))

%Latitudinal Derivative
 %Side
 Y_beta = (qbar * S * CYbeta) / m
 Y_p    = (qbar * S * b * CYp) / (2 * m * U1)
 Y_r    = (qbar * S * b * Cyr) / (2 * m * u1)
 %Roll
 L_beta = (qbar * S * b * CLbeta) / Ixx
 L_p    = (qbar * S * (b^2) * CLp) / (2 * Ixx * U1)
 L_r    = (qbar * S * (b^2) * CLr) / (2 * Ixx * U1)
 %Yaw
 N_beta = (qbar * S * b * CNbeta) / Izz
 N_p    = (qbar * S * (b^2) * CNp) / (2 * Izz * U1)
 N_r    = (qbar * S * (b^2) * CNr) / (2 * Izz * U1)
