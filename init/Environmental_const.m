% Sea Level Temp/Press/Dens (Does not need to be standard day!)

Rair = 1716.0;     % (Ft-Lb)/(Slug-R)
T0 = 518.69;       % R
mu0 = 3.62e-7;     % Lb-Sec/Ft^2
P0 = 2116.2;       % Lb/Ft^2
Rho0 = 0.002377;   % Slug/Ft^3

aLR = -0.00349;     % R/Ft

g0 = 32.174;       % Ft/Sec^2
r = 2.0856e7 ; %radius of E in ft

alpha_temp  =  0.003566; %temperature lapse rate R/ft

gamma = 1.4;
S = 198.7; %sutherland constant
r_planet_radius = 6.356766*10^6; 
h1_Assuming_Troposphere = 0; %Base atmosphere 

P_0 = 2116.22; % lb/ft^2

% Troposphere (Layer 1)
h_0_1 = 0; %ft
T_0_1 = 518.69; % R
rho_0_1 = 0.0023769; % slug/ft^3 density SL standard day
P_0_1 = 2116.22; %lb/ft^2

% Tropopause (Layer 2)
h_0_2 = 36089; %ft
T_0_2 = 389.99; % R
rho_0_2 = 0.000706; % slug/ft^3
P_0_2 = 472.68; %lb/ft^2

simOut = sim('ARO40506DOF_2020a_2025','StopTime','0.01');
RhoAltitude = simOut.Density;  % Slug/Ft^3
