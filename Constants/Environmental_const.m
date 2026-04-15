%% Environmental Constants Script (Environmental_const.m)
% This script sets up the physical constants for the Earth and its atmosphere.
% It defines the standard atmospheric properties used throughout the simulation.

% --- Sea Level Properties (Standard Day) ---
Rair = 1716.0;      % Specific gas constant for air (Ft-Lb)/(Slug-R)
T0   = 518.69;      % Sea level standard temperature (Rankine)
mu0  = 3.62e-7;     % Sea level dynamic viscosity (Lb-Sec/Ft^2)
P0   = 2116.2;      % Sea level standard pressure (Lb/Ft^2) (also defined as P_0 below)
Rho0 = 0.002377;    % Sea level standard density (Slug/Ft^3)

% --- Earth and Gravitational Constants ---
g0 = 32.174;        % Standard acceleration of gravity (Ft/Sec^2)
r  = 20900000;      % Radius of Earth (ft)
r_planet_radius = 20900000; % Earth radius in meters (for reference/other models)

% --- Thermodynamic Properties ---
gamma = 1.4;        % Ratio of specific heats for air
S     = 198.7;      % Sutherland's specific temperature constant for air viscosity (Rankine)

% --- Standard Atmosphere Lapse Rates ---
aLR        = -0.00349;  % Traditional temperature lapse rate (R/ft)
alpha_temp = -0.003566; % Alternative temperature lapse rate definition (R/ft)

% --- Atmospheric Layer Models ---
h1_Assuming_Troposphere = 0; % Base altitude for atmosphere (ft)
P_0 = 2116.22;               % Duplicate sea-level pressure (lb/ft^2)

% Troposphere (Layer 1: 0 to 36,089 ft)
h_0_1   = 0;          % Base altitude (ft)
T_0_1   = 518.67;     % Base temperature (R)
rho_0_1 = 0.0023725;  % Base density (slug/ft^3)
P_0_1   = 2116.22;    % Base pressure (lb/ft^2)

% Tropopause (Layer 2: 36,089 to 65,617 ft)
h_0_2   = 36089;      % Base altitude (ft)
T_0_2   = 389.97;     % Base temperature (R)
rho_0_2 = 0.0007038;  % Base density (slug/ft^3)
P_0_2   = 472.68;     % Base pressure (lb/ft^2)

% --- Optional Environment Overrides ---
% simOut = sim('ARO40506DOF_2020a_2025','StopTime','0.01');
% RhoAltitude = simOut.Density;  % Slug/Ft^3