%% Approach Flight Conditions (FC1)

%% FLight Condition Data
alt = 20000;    % Altitude (ft)
mach = 0.650;   % Mach Number
tas = 673;      % True Air Speed (ft/s)
qbar = 287.2;   % Dynamic Pressure (lbs/ft^2)
cbar = 0.25;    % CG Location
alpha = 2.5;    % Angle of Attack (deg)

%% Mass Data
m = 636636;         % Weight (lbs)
ixxb = 18200000;    % Mass Moment of Inertia XX (slug*ft^2)
iyyb = 33100000;    % Mass Moment of Inertia YY (slug*ft^2)
izzb = 49700000;    % Mass Moment of Inertia ZZ (slug*ft^2)
ixzb = 970000;      % Mass Moment of Inertia XZ (slug*ft^2)

%% Steady State Coefficients
CL1 = 0.40;      % Initial Coefficient of Lift
CD1 = 0.0250;    % Initial Coefficient of Drag
CT_x1 = 0.0250;  % Initial Coefficient of Thrust/Force
CM1 = 0;         % Initial Pitching Moment Coefficient
CM_t1 = 0;       % Initial Pitching Moment Coefficient from Thrust

%% Longitudinal Coefficients and Stability Derivatives (Stability Axes, Dimensionless)
CD0 = 0.0164;      % Zero-lift Drag Coefficient
CD_u = 0;          % Partial CD with respect to velocity u (x-dir)
CD_alpha = 0.20;   % Partial CD with respect to angle of attack
CT_x_u = -0.055;   % Partial CTx with respect to velocity u
CL0 = 0.21;        % Lift Coefficient at 0 AoA
CL_u = 0.13;       % Partial CL with respect to velocity u
CL_alpha = 4.4;    % Partial CL with respect to angle of attack
CL_alphdot = 7.0;  % Partial CL with respect to time rate of change of AoA
CL_q = 6.6;        % Partial CL with respect to pitch rate
CM_0 = 0;          % Pitching Moment Coefficient at 0 AoA
CM_u = 0.013;      % Partial Cm with respect to velocity u
CM_alpha = -1.00;  % Partial Cm with respect to angle of attack
CM_alphdot = -4.0; % Partial Cm with respect to time rate of change of AoA
CM_q = -20.5;      % Partial Cm with respect to pitch rate
CM_t_u = 0;        % Partial Cm from thrust with respect to velocity u
CM_t_alph = 0;     % Partial Cm from thrust with respect to AoA

%% Longitudinal Control and Hinge Moment Derivatives (Stability Axes, 1/rad)
CD_delEle = 0;     % Partial CD with respect to elevator deflection
CL_delEle = 0.32;  % Partial CL with respect to elevator deflection
CM_delEle = -1.30; % Partial Cm with respect to elevator deflection
CD_ih = 0;         % Induced CD by horizontal stabilizer
CL_ih = 0.70;      % Induced CL by horizontal stabilizer
CM_ih = -2.7;      % Induced Cm by horizontal stabilizer
%chalph = ???;     % Partial Ch (horizontal tail lift) with respect to AoA
%chdele = ???;     % Partial Ch with respect to elevator deflection

%% Lateral_Directional Stability Derivatives (Stability Axes, Dimensionless)
CL_beta = -0.160;  % Partial Cl with respect to sideslip angle
CL_p = -0.340;     % Partial Cl with respect to roll rate
CL_r = 0.130;      % Partial Cl with respect to yaw rate
CY_beta = -0.90;   % Partial CY with respect to sideslip angle
CY_p = 0;          % Partial Cl with respect to roll rate
CY_r = 0;          % Partial Cl with respect to yaw rate
CN_beta = 0.160;   % Partial Cn with respect to sideslip angle
CN_t_beta = 0;     % Partial Cn from thrust with respect to sideslip angle
CN_p = -0.026;     % Partial Cn with respect to roll rate
CN_r = -0.280;     % Partial Cn with respect to yaw rate

%% Lateral-Directional Control and Hinge Moment Derivatives (Stability Axes, Dimensionless)
CL_delAil = 0.013;  % Partial Cl with respect to aileron deflection
CL_delRud = 0.008;  % Partial Cl with respect to rudder deflection
CY_delAil = 0;      % Partial CY with respect to aileron deflection
CY_delRud = 0.120;  % Partial CY with respect to rudder deflection
CN_delAil = 0.0018; % Partial Cn with respect to aileron deflection
CN_delRud = -0.100; % Partial Cn with respect to rudder deflection
%chalph_a = ???;    % Hinge moment derivative for aileron
%chdela = ???;      % Partial Ch with respect to aileron deflection
%chbetav = ???;     % Partial Ch with respect to sideslip angle of vertical tail
%chdelr = ???;      % Partial Ch with respect to rudder deflection
