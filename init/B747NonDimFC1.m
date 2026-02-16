%% Approach Flight Conditions (FC1)

%% FLight Condition Data
alt = 0;        % Altitude (ft)
mach = 0.198;   % Mach Number
tas = 221;      % True Air Speed (ft/s)
qbar = 58;      % Dynamic Pressure (lbs/ft^2)
cbar = 0.25;    % CG Location
alpha = 8.5;    % Angle of Attack (deg)

%% Mass Data
m = 564000;         % Weight (lbs)
ixxb = 13700000;    % Mass Moment of Inertia XX (slug*ft^2)
iyyb = 30500000;    % Mass Moment of Inertia YY (slug*ft^2)
izzb = 43100000;    % Mass Moment of Inertia ZZ (slug*ft^2)
ixzb = 830000;      % Mass Moment of Inertia XZ (slug*ft^2)

%% Steady State Coefficients
CL1 = 1.76;     % Initial Coefficient of Lift
CD1 = 0.2630;   % Initial Coefficient of Drag
CT_x1 = 0.2630;  % Initial Coefficient of Thrust/Force
CM1 = 0;        % Initial Pitching Moment Coefficient
CM_t1 = 0;       % Initial Pitching Moment Coefficient from Thrust

%% Longitudinal Coefficients and Stability Derivatives (Stability Axes, Dimensionless)
CD0 = 0.0751;   % Zero-lift Drag Coefficient
CD_u = 0;        % Partial CD with respect to velocity u (x-dir)
CD_alpha = 1.13;  % Partial CD with respect to angle of attack
CT_x_u = -0.5523; % Partial CTx with respect to velocity u
CL0 = 0.92;     % Lift Coefficient at 0 AoA
CL_u = -0.22;    % Partial CL with respect to velocity u
CL_alpha = 5.67;  % Partial CL with respect to angle of attack
CL_alphdot = 6.7;% Partial CL with respect to time rate of change of AoA
CL_q = 5.65;     % Partial CL with respect to pitch rate
CM_0 = 0;        % Pitching Moment Coefficient at 0 AoA
CM_u = 0.071;    % Partial Cm with respect to velocity u
CM_alpha = -1.45; % Partial Cm with respect to angle of attack
CM_alphdot = -3.3; % Partial Cm with respect to time rate of change of AoA
CM_q = -21.4;    % Partial Cm with respect to pitch rate
CM_t_u = 0;       % Partial Cm from thrust with respect to velocity u
CM_t_alph = 0;    % Partial Cm from thrust with respect to AoA

%% Longitudinal Control and Hinge Moment Derivatives (Stability Axes, 1/rad)
CD_delEle = 0;     % Partial CD with respect to elevator deflection
CL_delEle = 0.36;  % Partial CL with respect to elevator deflection
CM_delEle = -1.4;  % Partial Cm with respect to elevator deflection
CD_ih = 0;          % Induced CD by horizontal stabilizer
CL_ih = 0.75;       % Induced CL by horizontal stabilizer
CM_ih = -3;         % Induced Cm by horizontal stabilizer
%chalph = ???;      % Partial Ch (horizontal tail lift) with respect to AoA
%chdele = ???;      % Partial Ch with respect to elevator deflection

%% Lateral_Directional Stability Derivatives (Stability Axes, Dimensionless)
CL_beta = -0.281;    % Partial Cl with respect to sideslip angle
CL_p = -0.502;       % Partial Cl with respect to roll rate
CL_r = 0.195;        % Partial Cl with respect to yaw rate
CY_beta = -1.08;     % Partial CY with respect to sideslip angle
CY_p = 0;            % Partial Cl with respect to roll rate
CY_r = 0;            % Partial Cl with respect to yaw rate
CN_beta = 0.184;     % Partial Cn with respect to sideslip angle
CN_t_beta = 0;        % Partial Cn from thrust with respect to sideslip angle
CN_p = -0.222;       % Partial Cn with respect to roll rate
CN_r = -0.36;        % Partial Cn with respect to yaw rate

%% Lateral-Directional Control and Hinge Moment Derivatives (Stability Axes, Dimensionless)
CL_delAil = 0.053; % Partial Cl with respect to aileron deflection
CL_delRud = 0;     % Partial Cl with respect to rudder deflection
CY_delAil = 0;     % Partial CY with respect to aileron deflection
CY_delRud = 0.179; % Partial CY with respect to rudder deflection
CN_delAil = 0.0083;% Partial Cn with respect to aileron deflection
CN_delRud = -0.113;% Partial Cn with respect to rudder deflection
%chalph_a = ???; % Hinge moment derivative for aileron
%chdela = ???;   % Partial Ch with respect to aileron deflection
%chbetav = ???;  % Partial Ch with respect to sideslip angle of vertical tail
%chdelr = ???;   % Partial Ch with respect to rudder deflection
