%% ---------------------------------------------------------
%  LONGITUDINAL AIRPLANE TRANSFER FUNCTIONS
%% ---------------------------------------------------------
%----------------- U RESPONSE TO DElve ---------------------
%% D1_bar
A1 = U1 - Z_alpha_dot;

B1 = -(U1 - Z_alpha_dot)*(X_u +X_T_u + M_q) - Z_alpha - M_alpha_dot*(U1 + Z_q);

C1 = (X_u + X_T_u)*(M_q*(U1-Z_alpha_dot) + Z_alpha + M_alpha_dot*(U1+Z_q)) ...
    + M_q*Z_alpha - Z_u*X_alpha + M_alpha_dot*g0*sin(Theta0) ...
    - (M_alpha + M_T_alpha)*(U1+Z_q);

D1 = g0*sin(Theta0)*(M_alpha+M_T_alpha - M_alpha_dot*(X_u+X_T_u))...
    +g0*cos(Theta0)*(Z_u*M_alpha_dot + (M_u + M_T_u)*(U1 - Z_alpha_dot)) ...
    + (M_u +M_T_u)*(-X_alpha*(U1+Z_q))+Z_u*X_alpha*M_q + (X_u ...
    + X_T_u)*((M_alpha + M_T_alpha)*(U1 + Z_q) - M_q*Z_alpha);

E1 = g0*cos(Theta0)*((M_alpha + M_T_alpha)*Z_u - Z_alpha*(M_u ...
    + M_T_u)) + g0*sin(Theta0)*((M_u + M_T_u )*X_alpha - (X_u ...
    + X_T_u)*(M_alpha + M_T_alpha));

D1_bar = [A1 B1 C1 D1 E1];

%% Nu
Au = X_delEle*(U1 -Z_alpha_dot);

Bu = -X_delEle*((U1 - Z_alpha_dot)*M_q + Z_alpha + M_alpha_dot*(U1 + Z_q)) + Z_delEle*X_alpha;

Cu = X_delEle*(M_q*Z_alpha + M_alpha_dot*g0*sin(Theta0) - (M_alpha + M_T_alpha)*(U1 ...
    + Z_q)) + Z_delEle*(-M_alpha_dot*g0*cos(Theta0) - X_alpha*M_q) ...
    + M_delEle*(X_alpha*(U1 + Z_q) - (U1 - Z_alpha_dot)*g0*cos(Theta0));

Du = X_delEle*(M_alpha + M_T_alpha)*g0*sin(Theta0) - Z_delEle*M_alpha*g0*cos(Theta0)...
    + M_delEle*(Z_alpha*g0*cos(Theta0) - X_alpha*g0*sin(Theta0));

Nu_delEle = [Au Bu Cu Du];

%----------------- ALPHA RESPONSE TO DElve ---------------------
%% N_alpha
A_alpha = Z_delEle;

B_alpha = X_delEle*Z_u + Z_delEle*(-M_q - (X_u + X_T_u)) + M_delEle*(U1 + Z_q);

C_alpha = X_delEle*((U1 + Z_q)*(M_u + M_T_u) - M_q*Z_u) + Z_delEle*M_q*(X_u + X_T_u) ...
          + M_delEle*(-g0*sin(Theta0) - (U1 + Z_q)*(X_u + X_T_u));

D_alpha = -X_delEle*(M_u + M_T_u)*g0*sin(Theta0) + Z_delEle*(M_u + M_T_u)*g0*cos(Theta0) ...
          + M_delEle*((X_u + X_T_u)*g0*sin(Theta0) - Z_u*g0*cos(Theta0));

N_alpha_delEle = [A_alpha B_alpha C_alpha D_alpha];

%----------------- THETA RESPONSE TO DElev ---------------------
%% N_theta
A_theta = Z_delEle*M_alpha_dot + M_delEle*(U1 - Z_alpha_dot);

B_theta = X_delEle*(Z_u*M_alpha_dot + (U1 - Z_alpha_dot)*(M_u + M_T_u)) ...
          + Z_delEle*((M_alpha + M_T_alpha) - M_alpha_dot*(X_u + X_T_u)) ...
          + M_delEle*(-Z_alpha - (U1 - Z_alpha_dot)*(X_u + X_T_u));

C_theta = X_delEle*((M_alpha + M_T_alpha)*Z_u - Z_alpha*(M_u + M_T_u)) ...
          + Z_delEle*(-(M_alpha + M_T_alpha)*(X_u + X_T_u) + X_alpha*(M_u + M_T_u)) ...
          + M_delEle*(Z_alpha*(X_u + X_T_u) - X_alpha*Z_u);

N_theta_delEle = [A_theta B_theta C_theta];


%% %% ---------------------------------------------------------
%----------------- U RESPONSE TO delT ---------------------

%% Nu_delT
delT = EngineThrustCMD;
X_delEle = delT/Mass;
Z_delEle = 0;
M_delEle = 0;
Au = X_delEle*(U1 -Z_alpha_dot);

Bu = -X_delEle*((U1 - Z_alpha_dot)*M_q + Z_alpha + M_alpha_dot*(U1 + Z_q)) + Z_delEle*X_alpha;

Cu = X_delEle*(M_q*Z_alpha + M_alpha_dot*g0*sin(Theta0) - (M_alpha + M_T_alpha)*(U1 ...
    + Z_q)) + Z_delEle*(-M_alpha_dot*g0*cos(Theta0) - X_alpha*M_q) ...
    + M_delEle*(X_alpha*(U1 + Z_q) - (U1 - Z_alpha_dot)*g0*cos(Theta0));

Du = X_delEle*(M_alpha + M_T_alpha)*g0*sin(Theta0) - Z_delEle*M_alpha*g0*cos(Theta0)...
    + M_delEle*(Z_alpha*g0*cos(Theta0) - X_alpha*g0*sin(Theta0));

Nu_delT = [Au Bu Cu Du];

%----------------- ALPHA RESPONSE TO delT ---------------------
%% N_alpha
A_alpha = Z_delEle;

B_alpha = X_delEle*Z_u + Z_delEle*(-M_q - (X_u + X_T_u)) + M_delEle*(U1 + Z_q);

C_alpha = X_delEle*((U1 + Z_q)*(M_u + M_T_u) - M_q*Z_u) + Z_delEle*M_q*(X_u + X_T_u) ...
          + M_delEle*(-g0*sin(Theta0) - (U1 + Z_q)*(X_u + X_T_u));

D_alpha = -X_delEle*(M_u + M_T_u)*g0*sin(Theta0) + Z_delEle*(M_u + M_T_u)*g0*cos(Theta0) ...
          + M_delEle*((X_u + X_T_u)*g0*sin(Theta0) - Z_u*g0*cos(Theta0));

N_alpha_delT = [A_alpha B_alpha C_alpha D_alpha];

%----------------- THETA RESPONSE TO delT ---------------------
%% N_theta
A_theta = Z_delEle*M_alpha_dot + M_delEle*(U1 - Z_alpha_dot);

B_theta = X_delEle*(Z_u*M_alpha_dot + (U1 - Z_alpha_dot)*(M_u + M_T_u)) ...
          + Z_delEle*((M_alpha + M_T_alpha) - M_alpha_dot*(X_u + X_T_u)) ...
          + M_delEle*(-Z_alpha - (U1 - Z_alpha_dot)*(X_u + X_T_u));

C_theta = X_delEle*((M_alpha + M_T_alpha)*Z_u - Z_alpha*(M_u + M_T_u)) ...
          + Z_delEle*(-(M_alpha + M_T_alpha)*(X_u + X_T_u) + X_alpha*(M_u + M_T_u)) ...
          + M_delEle*(Z_alpha*(X_u + X_T_u) - X_alpha*Z_u);

N_theta_delT = [A_theta B_theta C_theta];


%% ---------------------------------------------------------
%  LATERAL AIRPLANE TRANSFER FUNCTIONS
%% ---------------------------------------------------------
%----------------- BETA RESPONSE TO DAil -------------------
%% D2_bar_ail
A1_bar = Ixz / Ixx;
B1_bar = Ixz / Izz;

A2_ail = U1*(1 - A1_bar*B1_bar);

B2_ail = -Y_beta*(1 - A1_bar*B1_bar) ...
     - U1*(L_p + N_r + A1_bar*N_p + B1_bar*L_r);

C2_ail = U1*(L_p*N_r - L_r*N_p) ...
     + Y_beta*(N_r + L_p + A1_bar*N_p + B1_bar*L_r) ...
     - Y_p*(L_p + N_beta*A1_bar + N_T_beta*A1_bar) ...
     + U1*(L_p*B1_bar + N_beta + N_T_beta) - Y_r*(L_beta*B1_bar + N_beta...
     + N_T_beta);

D2_ail = -Y_beta*(L_p*N_r - L_r*N_p) ...
     + Y_p*(L_beta*N_r - N_beta*L_r - N_T_beta*L_r) ...
     - g0*cos(Theta0)*(L_beta + N_beta*A1_bar + N_T_beta*A1_bar) ...
     + U1*(L_beta*N_p - N_beta*L_p - N_T_beta*L_p - Y_r*(L_beta*N_p - ...
     N_beta*L_p - N_T_beta*L_p));

E2_ail = g0*cos(Theta0)*(L_beta*N_r - N_beta*L_r - N_T_beta*L_r);

D2_bar_ail = [A2_ail B2_ail C2_ail D2_ail E2_ail];

%% Num_beta_ail
A_beta_ail = Y_delAil*(1 - A1_bar*B1_bar);

B_beta_ail = -Y_delAil*(N_r + L_p + A1_bar*N_p + B1_bar*L_r) ...
         + Y_p*(L_delAil + N_delAil*A1_bar) ...
         + Y_r*(L_delAil*B1_bar + N_delAil) ...
         - U1*(L_delAil*B1_bar + N_delAil);
C_beta_ail = Y_delAil*(L_p*N_r - N_p*L_r) ...
        + Y_p*(N_delAil*L_r - L_delAil*N_r) ...
         + g0*cos(Theta0)*(L_delAil + N_delAil*A1_bar) ...
         + Y_r*(L_delAil*N_p - N_delAil*L_p) ...
         - U1*(L_delAil*N_p - N_delAil*L_p);
D_beta_ail = g0*cos(Theta0)*(N_delAil*L_r - L_delAil*N_r);

Num_beta_ail = [A_beta_ail B_beta_ail C_beta_ail D_beta_ail 0];

%----------------- PHI RESPONSE TO DAil --------------------
%% N_phi_ail
A_phi_ail = U1*(L_delAil + N_delAil*A1_bar);

B_phi_ail = U1*(N_delAil*L_r - L_delAil*N_r) ...
        - Y_beta*(L_delAil + N_delAil*A1_bar) ...
        + Y_delAil*(L_beta + N_beta*A1_bar + N_T_beta*A1_bar);

C_phi_ail = -Y_beta*(N_delAil*L_r - L_delAil*N_r) ...
        + Y_delAil*(L_r*N_beta + L_r*N_T_beta - N_r*L_beta) ...
        + (U1 - Y_r)*(N_beta*L_delAil + N_T_beta*L_delAil - L_beta*N_delAil);

N_phi_ail = [A_phi_ail B_phi_ail C_phi_ail 0];

%----------------- PSI RESPONSE TO DAil --------------------
%% N_psi_ail
A_psi_ail = U1*(N_delAil + L_delAil*B1_bar);

B_psi_ail = U1*(L_delAil*N_p - N_delAil*L_p) ...
        - Y_beta*(N_delAil + L_delAil*B1_bar) ...
        + Y_delAil*(L_beta*B1_bar + N_beta + N_T_beta);

C_psi_ail = -Y_beta*(L_delAil*N_p - N_delAil*L_p) ...
        + Y_p*(N_beta*L_delAil + N_T_beta*L_delAil - L_beta*N_delAil) ...
        + Y_delAil*(L_beta*N_p - N_beta*L_p - N_T_beta*L_p);

D_psi_ail = g0*cos(Theta0)*(N_beta*L_delAil + N_T_beta*L_delAil - L_beta*N_delAil);

N_psi_ail = [A_psi_ail B_psi_ail C_psi_ail D_psi_ail];

%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%----------------- BETA RESPONSE TO DRud -------------------
%% D2_bar_Rud
A1_bar = Ixz / Ixx;
B1_bar = Ixz / Izz;

A2_Rud = U1*(1 - A1_bar*B1_bar);

B2_Rud = -Y_beta*(1 - A1_bar*B1_bar) ...
     - U1*(L_p + N_r + A1_bar*N_p + B1_bar*L_r);

C2_Rud = U1*(L_p*N_r - L_r*N_p) ...
     + Y_beta*(N_r + L_p + A1_bar*N_p + B1_bar*L_r) ...
     - Y_p*(L_p + N_beta*A1_bar + N_T_beta*A1_bar) ...
     + U1*(L_p*B1_bar + N_beta + N_T_beta) - Y_r*(L_beta*B1_bar + N_beta...
     + N_T_beta);

D2_Rud = -Y_beta*(L_p*N_r - L_r*N_p) ...
     + Y_p*(L_beta*N_r - N_beta*L_r - N_T_beta*L_r) ...
     - g0*cos(Theta0)*(L_beta + N_beta*A1_bar + N_T_beta*A1_bar) ...
     + U1*(L_beta*N_p - N_beta*L_p - N_T_beta*L_p - Y_r*(L_beta*N_p - ...
     N_beta*L_p - N_T_beta*L_p));

E2_Rud = g0*cos(Theta0)*(L_beta*N_r - N_beta*L_r - N_T_beta*L_r);

D2_bar_Rud = [A2_Rud B2_Rud C2_Rud D2_Rud E2_Rud];

%% Num_beta_Rud
A_beta_Rud = Y_delRud*(1 - A1_bar*B1_bar);

B_beta_Rud = -Y_delRud*(N_r + L_p + A1_bar*N_p + B1_bar*L_r) ...
         + Y_p*(L_delRud + N_delRud*A1_bar) ...
         + Y_r*(L_delRud*B1_bar + N_delRud) ...
         - U1*(L_delRud*B1_bar + N_delRud);
C_beta_Rud = Y_delRud*(L_p*N_r - N_p*L_r) ...
        + Y_p*(N_delRud*L_r - L_delRud*N_r) ...
         + g0*cos(Theta0)*(L_delRud + N_delRud*A1_bar) ...
         + Y_r*(L_delRud*N_p - N_delRud*L_p) ...
         - U1*(L_delRud*N_p - N_delRud*L_p);
D_beta_Rud = g0*cos(Theta0)*(N_delRud*L_r - L_delRud*N_r);

Num_beta_Rud = [A_beta_Rud B_beta_Rud C_beta_Rud D_beta_Rud 0];

%----------------- PHI RESPONSE TO DRud --------------------
%% N_phi_Rud
A_phi_Rud = U1*(L_delRud + N_delRud*A1_bar);

B_phi_Rud = U1*(N_delRud*L_r - L_delRud*N_r) ...
        - Y_beta*(L_delRud + N_delRud*A1_bar) ...
        + Y_delRud*(L_beta + N_beta*A1_bar + N_T_beta*A1_bar);

C_phi_Rud = -Y_beta*(N_delRud*L_r - L_delRud*N_r) ...
        + Y_delRud*(L_r*N_beta + L_r*N_T_beta - N_r*L_beta) ...
        + (U1 - Y_r)*(N_beta*L_delRud + N_T_beta*L_delRud - L_beta*N_delRud);

N_phi_Rud = [A_phi_Rud B_phi_Rud C_phi_Rud 0];

%----------------- PSI RESPONSE TO DRud --------------------
%% N_psi_ail
A_psi_Rud = U1*(N_delRud + L_delRud*B1_bar);

B_psi_Rud = U1*(L_delRud*N_p - N_delRud*L_p) ...
        - Y_beta*(N_delRud + L_delRud*B1_bar) ...
        + Y_delRud*(L_beta*B1_bar + N_beta + N_T_beta);

C_psi_Rud = -Y_beta*(L_delRud*N_p - N_delRud*L_p) ...
        + Y_p*(N_beta*L_delRud + N_T_beta*L_delRud - L_beta*N_delRud) ...
        + Y_delRud*(L_beta*N_p - N_beta*L_p - N_T_beta*L_p);

D_psi_Rud = g0*cos(Theta0)*(N_beta*L_delRud + N_T_beta*L_delRud - L_beta*N_delRud);

N_psi_Rud = [A_psi_Rud B_psi_Rud C_psi_Rud D_psi_Rud];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% TRANSFER FUNCTIONS
% Elevator TF
TF_u_de = tf(Nu_delEle,D1_bar);
TF_alpha_de = tf(N_alpha_delEle,D1_bar);
TF_Theta_de = tf(N_theta_delEle,D1_bar);

% Elavtor TF
TF_u_delT = tf(Nu_delT,D1_bar);
TF_alpha_delT = tf(N_alpha_delT,D1_bar);
TF_Theta_delT = tf(N_theta_delT,D1_bar);

% Aileron TF
TF_beta_d_ail = tf(Num_beta_ail,D2_bar_ail);
TF_phi_d_ail = tf(N_phi_ail,D2_bar_ail);
TF_psi_d_ail = tf(N_psi_ail,D2_bar_ail);

% Rudder TF
TF_beta_d_Rud = tf(Num_beta_Rud,D2_bar_Rud);
TF_phi_d_Rud = tf(N_phi_Rud,D2_bar_Rud);
TF_psi_d_Rud = tf(N_psi_Rud,D2_bar_Rud);


%% -------------------------------------------------
% Root locus analysis 
%% -------------------------------------------------
% 
% figure('Name','All Transfer Functions Root Locus');
% 
% % ===== Row 1: Elevator =====
% subplot(3,3,1)
% rlocus(TF_u_de);
% grid on;
% title('u / \delta_e');
% 
% subplot(3,3,2)
% rlocus(TF_alpha_de);
% grid on;
% title('\alpha / \delta_e');
% 
% subplot(3,3,3)
% rlocus(TF_Theta_de);
% grid on;
% title('\theta / \delta_e');
% 
% % ===== Row 2: Aileron =====
% subplot(3,3,4)
% rlocus(TF_beta_d_ail);
% grid on;
% title('\beta / \delta_a');
% 
% subplot(3,3,5)
% rlocus(TF_phi_d_ail);
% grid on;
% title('\phi / \delta_a');
% 
% subplot(3,3,6)
% rlocus(TF_psi_d_ail);
% grid on;
% title('\psi / \delta_a');
% 
% % ===== Row 3: Rudder =====
% subplot(3,3,7)
% rlocus(TF_beta_d_Rud);
% grid on;
% title('\beta / \delta_r');
% 
% subplot(3,3,8)
% rlocus(TF_phi_d_Rud);
% grid on;
% title('\phi / \delta_r');
% 
% subplot(3,3,9)
% rlocus(TF_psi_d_Rud);
% grid on;
% title('\psi / \delta_r');
% 
% set(gcf, 'Position', [200 200 1000 800]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% How to Tune (manually in Sim_init)
% - Increasing0 Kp_pitch will result in a faster response but introduce 
% overshoot aN_del oscillation.
% - Increasing0 Kd_pitch will add damping0 aN_del reduce overshoot.
% - Same for roll g0ains
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%