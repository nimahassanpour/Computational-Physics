clc;
clear all
%% Setting the Constant Parammeters -Prb-1
Sigma_1 = 1;
Rho_1 = 1;
Beta_1 = 1;
%%
tspan_1 = [0 100]; % Time of Evolution
ic_1 = [1 1 1]; %Initial Condition
[t,y] = ode45(@(t,y) odefun(t,y,Sigma_1,Beta_1,Rho_1), tspan_1, ic_1); % ode45 function
%% Figure of Problem# 1
figure
plot3(y(:,1),y(:,2),y(:,3))
xlabel(' x ') 
ylabel(' y ') 
zlabel(' z ')
title('Problem# 1','Color','Blue');
figure
subplot(3,1,1);
plot(t,y(:,1));
title('x(t)')

subplot(3,1,2);
plot(t,y(:,2),'r');
title('y(t)')

subplot(3,1,3);
plot(t,y(:,3),'g');
title('z(t)')
% suptitle('Problem#1')
annotation('textbox', [0 0.9 1 0.1], ...
    'String', 'Problem# 1', ...
    'FontSize',10, ...
    'Color','Blue', ...
    'EdgeColor', 'none', ...
    'HorizontalAlignment', 'center')