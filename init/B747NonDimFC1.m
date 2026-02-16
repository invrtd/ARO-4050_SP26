%% Approach Flight Conditions (FC1)

%% FLight Condition Data
alt = 0;        % Altitude (ft)
mach = 0.198;   % Mach Number
tas = 221;      % True Air Speed (ft/s)
qbar = 58;      % Dynamic Pressure (lbs/ft^2)
cbar = 0.25;    % CG Location
alpha = 8.5;    % Angle of Attack (deg)

%% Mass Data
w = 564000;         % Weight (lbs)
ixxb = 13700000;    % Mass Moment of Inertia XX (slug*ft^2)
iyyb = 30500000;    % Mass Moment of Inertia YY (slug*ft^2)
izzb = 43100000;    % Mass Moment of Inertia ZZ (slug*ft^2)
ixzb = 830000;      % Mass Moment of Inertia XZ (slug*ft^2)

%% Steady State Coefficients
cl1 = 1.76;     % Initial Coefficient of Lift
cd1 = 0.2630;   % Initial Coefficient of Drag
ctx1 = 0.2630;  % Initial Coefficient of Thrust/Force
cm1 = 0;        % Initial Pitching Moment Coefficient
cmt1 = 0;       % Initial Pitching Moment Coefficient from Thrust

%% Longitudinal Coefficients and Stability Derivatives (Stability Axes, Dimensionless)
cd0 = 0.0751;   % Zero-lift Drag Coefficient
cdu = 0;        % Partial CD with respect to velocity u (x-dir)
cdalph = 1.13;  % Partial CD with respect to angle of attack
ctxu = -0.5523; % Partial CTx with respect to velocity u
cl0 = 0.92;     % Lift Coefficient at 0 AoA
clu = -0.22;    % Partial CL with respect to velocity u
clalph = 5.67;  % Partial CL with respect to angle of attack
clalphdot = 6.7;% Partial CL with respect to time rate of change of AoA
clq = 5.65;     % Partial CL with respect to pitch rate
cm0 = 0;        % Pitching Moment Coefficient at 0 AoA
cmu = 0.071;    % Partial Cm with respect to velocity u
cmalph = -1.45; % Partial Cm with respect to angle of attack
cmalphdot = -3.3; % Partial Cm with respect to time rate of change of AoA
cmq = -21.4;    % Partial Cm with respect to pitch rate
cmtu = 0;       % Partial Cm from thrust with respect to velocity u
cmtalph = 0;    % Partial Cm from thrust with respect to AoA

%% Longitudinal Control and Hinge Moment Derivatives (Stability Axes, 1/rad)
cddele = 0;     % Partial CD with respect to elevator deflection
cldele = 0.36;  % Partial CL with respect to elevator deflection
cmdele = -1.4;  % Partial Cm with respect to elevator deflection
cdih = 0;       % Induced CD by horizontal stabilizer
clih = 0.75;    % Induced CL by horizontal stabilizer
cmih = -3;      % Induced Cm by horizontal stabilizer
%chalph = ???;   % Partial Ch (horizontal tail lift) with respect to AoA
%chdele = ???;   % Partial Ch with respect to elevator deflection

%% Lateral_Directional Stability Derivatives (Stability Axes, Dimensionless)
clbeta = -0.281;    % Partial Cl with respect to sideslip angle
clp = -0.502;       % Partial Cl with respect to roll rate
clr = 0.195;        % Partial Cl with respect to yaw rate
cybeta = -1.08;     % Partial CY with respect to sideslip angle
cyp = 0;            % Partial Cl with respect to roll rate
cyr = 0;            % Partial Cl with respect to yaw rate
cnbeta = 0.184;     % Partial Cn with respect to sideslip angle
cntbeta = 0;        % Partial Cn from thrust with respect to sideslip angle
cnp = -0.222;       % Partial Cn with respect to roll rate
cnr = -0.36;        % Partial Cn with respect to yaw rate

%% Lateral-Directional Control and Hinge Moment Derivatives (Stability Axes, Dimensionless)
cldela = 0.053; % Partial Cl with respect to aileron deflection
cldelr = 0;     % Partial Cl with respect to rudder deflection
cydela = 0;     % Partial CY with respect to aileron deflection
cydelr = 0.179; % Partial CY with respect to rudder deflection
cndela = 0.0083;% Partial Cn with respect to aileron deflection
cndelr = -0.113;% Partial Cn with respect to rudder deflection
%chalph_a = ???; % Hinge moment derivative for aileron
%chdela = ???;   % Partial Ch with respect to aileron deflection
%chbetav = ???;  % Partial Ch with respect to sideslip angle of vertical tail
%chdelr = ???;   % Partial Ch with respect to rudder deflection