clc
clear all
%% Setting the Constant Parammeters- Prb-6
Sigma_6 = 10;
Rho_6 = 70;
Beta_6 = 8/3;
%%
tspan_6 = [0 50]; % Time of Evolution
ic_6 = [5 5 5]; %Initial Condition
opts1 = odeset('MaxStep',1e-1);
[t1,y1] = ode45(@(t,y1) odefun(t,y1,Sigma_6,Beta_6,Rho_6), tspan_6, ic_6,opts1); % ode45 function
opts2 = odeset('MaxStep',1e-4);
[t2,y2] = ode45(@(t,y2) odefun(t,y2,Sigma_6,Beta_6,Rho_6), tspan_6, ic_6, opts2); % ode45 function     
%% Figure of Problem# 6
figure
subplot(3,1,1);
plot(t1,y1(:,1));
hold on
plot(t2,y2(:,1),'r');
title('x(t)')

subplot(3,1,2);
plot(t1,y1(:,2));
hold on
plot(t2,y2(:,2),'r');
title('y(t)')

subplot(3,1,3);
plot(t1,y1(:,3));
hold on
plot(t2,y2(:,3),'r');
title('z(t)')
% suptitle('Problem#1')
annotation('textbox', [0 0.9 1 0.1], ...
    'String', 'Problem# 6', ...
    'FontSize',10, ...
    'Color','Blue', ...
    'EdgeColor', 'none', ...
    'HorizontalAlignment', 'center')
%% Answer to question
disp('It seems that in this case the difference between two solutions is more related ')
disp('to the slop of each point that is calculated according to the data of previous point.')
disp('Since the Max-step size in smaller in second solver, it finds the data of next ')
disp('point with higher accuracy.')