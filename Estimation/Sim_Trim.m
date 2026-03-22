%% B747 Full Longitudinal Trim Script (FC3)
% --- Initial Trim Settings ---
StabTrimPos = -1.516;      % Horizontal Stabilizer Setting (+ = Nose Up Trim, deg or rad depending on model)
EngineThrustCMD = 0.793;   % N1 Fan Speed (1.0 = 100% Max, 0.0 = 0% Min
%look in Sim_Init
modelname = 'ARO40506DOF_2020a_2025';
tolerance =1e-6;
max_iters=5;

% 
for i = 1:max_iters
    % 1. Update Kinematic Initial Conditions for the next Sim run
    % Theta must equal Alpha for level flight (gamma = 0)
    u0 = U1;
    w0 = U1 * tand(alpha);
    Theta0 = deg2rad(alpha);
    q0 = 0; % Ensure rotation starts at zero

    % 2. Run a short "Snapshot" Simulation
    simOut = sim(modelname, 'StopTime', '0.001','FastRestart', "on");%makes runs faster now 

    % 3. Robust Data Extraction via getElement
    M_val  = simOut.logsout.getElement('Net Body Moments').Values.M.Data(1);%since it is a bus you need to say which val to read
    Ax_val = simOut.logsout.getElement('u dot (Ft/Sec^2)').Values.Data(1);
    Az_val = simOut.logsout.getElement('w dot (Ft/Sec^2)').Values.Data(1);

    % Log history for progressive tracking
   % history = [history; i, Ax_val, Az_val, alpha, StabTrimPos, EngineThrustCMD];

    % 4. Convergence Check
    if max(abs([Ax_val, Az_val])) < tolerance
        fprintf('Trim Success at Iteration %d\n', i);
        break;
    end

    % 5. Simultaneous Updates (Gradient Descent logic)
    % Update Alpha (Balances Lift vs Weight)
    % If Az is negative (sinking), we need more Alpha.
    alpha = alpha + (Az_val * 0.2); 

    % Update Thrust (Balances Thrust vs Drag)
    % If Ax is negative (slowing down), we need more Thrust.
    EngineThrustCMD = EngineThrustCMD - (Ax_val * 0.1);

    % Update Stabilizer (Balances Pitching Moment)
    % M_ih_dim approx = Qbar * Sref * Cbar * CM_ih
%     M_ih_dim = Qbar * Sref * Cbar * CM_ih/8;
%     StabTrimPos = StabTrimPos - (M_val / M_ih_dim);
 fprintf('Final Trim State: Alpha: %.5f deg Stab: %.5f deg Thrust: %.2f%%\n', ...
         alpha, StabTrimPos, EngineThrustCMD*100); 
end
% 
% %% 6. Progressive Trim Results Visualization
% % figure('Name', 'Trim Convergence History', 'Color', 'w');
% % subplot(3,1,1); plot(history(:,1), history(:,2), '-o'); title('Residual Moment (M)'); grid on;
% % subplot(3,1,2); plot(history(:,1), history(:,3), '-o'); title('Longitudinal Accel (Ax)'); grid on;
% % subplot(3,1,3); plot(history(:,1), history(:,4), '-o'); title('Vertical Accel (Az)'); grid on;
% 
 

 sim(modelname,'StopTime', '0.001', 'FastRestart', "off");%set it back to normal mode


 fprintf('Final Trim State:\n Alpha: %.5f deg\n Stab: %.5f deg\n Thrust: %.2f%%\n', ...
         alpha, StabTrimPos, EngineThrustCMD*100);
 