clc
clear all
%% Setting the Constant Parammeters- Prb-2
Sigma_5 = 10;
Rho_5 = 23;
Beta_5 = 8/3;
%%
tspan_4 = [0 50]; % Time of Evolution
ic_2 = [5 5 5]; %Initial Condition
[t2,y2] = ode45(@(t,y2) odefun(t,y2,Sigma_5,Beta_5,Rho_5), tspan_4, ic_2); % ode45 function
ic_4 = [5+1e-6  5 5]; %New Initial Condition 
[t4,y4] = ode45(@(t,y4) odefun(t,y4,Sigma_5,Beta_5,Rho_5), tspan_4, ic_4); % ode45 function
%% Plot
figure
subplot(3,1,1);
plot(t2,y2(:,1),'LineWidth',1.5);
hold on
plot(t4,y4(:,1),'r');
title('x(t)')

subplot(3,1,2);
plot(t2,y2(:,2),'LineWidth',1.5);
hold on
plot(t4,y4(:,2),'r');
title('x(t)')
title('y(t)')

subplot(3,1,3);
plot(t2,y2(:,3),'LineWidth',1.5);
hold on
plot(t4,y4(:,3),'r');
title('x(t)')
title('z(t)')
% suptitle('Problem#1')
annotation('textbox', [0 0.9 1 0.1], ...
    'String', 'Problem# 5: \rho = 23', ...
    'FontSize',10, ...
    'Color','Blue', ...
    'EdgeColor', 'none', ...
    'HorizontalAlignment', 'center')