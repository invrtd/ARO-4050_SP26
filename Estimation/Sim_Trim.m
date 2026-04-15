%% Trim Script

modelname = 'ARO40506DOF_2020a_2025';

load_system(modelname);
didbreak = false;
history = zeros(max_iters, 6);   % [iter, Ax, Az, alpha, StabTrimPos, EngineThrustCMD]

set_param(modelname, 'FastRestart', 'on');
%intial guesses
T_FLF           = Weight/(CL1/CD1);         % lbf
EngineThrustCMD = T_FLF / (NumberOfEngines * T_Max0);   % fixed
ih = -(CM0 + CM_alpha*deg2rad(alpha))/(CM_ih); %rad
StabTrimPos = rad2deg(ih)
for i = 1:max_iters

    Initial_conditions

    % Run a short snapshot simulation
    simOut = sim(modelname, 'StopTime', '0');

    % Extract initial values
    M_val  = simOut.logsout.getElement('Net Body Moments').Values.M.Data(1);
    Ax_val = simOut.logsout.getElement('u dot (Ft/Sec^2)').Values.Data(1);
    Az_val = simOut.logsout.getElement('w dot (Ft/Sec^2)').Values.Data(1);

    % Store history
    history(i,:) = [i, Ax_val, Az_val, alpha, StabTrimPos, EngineThrustCMD];

    % Check convergence
    if max(abs([Ax_val, Az_val])) < tolerance
        didbreak = true;
        set_param(modelname, 'FastRestart', 'off');
        break;
    end

    % Update alpha
    alpha = alpha + (Az_val * 0.2);

    % Update thrust
    EngineThrustCMD = EngineThrustCMD - (Ax_val * 0.1);

    % Update stabilizer
    M_ih_dim = Qbar * Sref * Cbar * CM_ih / 8;
    StabTrimPos = StabTrimPos - (M_val / M_ih_dim);

    fprintf('Alpha: %.5f deg | Stab: %.5f deg | Thrust: %.5f | Iteration %d\n', ...
        alpha, StabTrimPos, EngineThrustCMD, i);
end

% Keep only the rows that were used
history = history(1:i,:);


%% Final Output

if didbreak && i == 1
    fprintf('==================================================\n');
    fprintf('                    TRIM STATE                    \n');
    fprintf('==================================================\n');
    fprintf('Alpha           : %10.5f deg\n', alpha);
    fprintf('Stabilizer Trim : %10.5f deg\n', StabTrimPos);
    fprintf('Thrust Command  : %10.2f %%\n', EngineThrustCMD * 100);
    fprintf('==================================================\n');

else
    if didbreak
        fprintf('==================================================\n');
        fprintf('Trim Converged (Iteration %d)\n', i);
        fprintf('Final Trim Values:\n');
        fprintf('--------------------------------------------------\n');
    else
        fprintf('==================================================\n');
        fprintf('Trim Did NOT Converge (Iteration %d)\n', i);
        fprintf('Best Available Values:\n');
        fprintf('--------------------------------------------------\n');
    end

    fprintf('alpha            = %.6f;\n', alpha);
    fprintf('StabTrimPos      = %.6f;\n', StabTrimPos);
    fprintf('EngineThrustCMD  = %.6f;\n', EngineThrustCMD);

    fprintf('==================================================\n');
end