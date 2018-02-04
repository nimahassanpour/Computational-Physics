clc
clear all
%% Setting the Constant Parammeters- Prb-2
Sigma_2 = 10;
Rho_2 = 28;
Beta_2 = 8/3;
%%
tspan_2 = [0 20]; % Time of Evolution
ic_2 = [5 5 5]; %Initial Condition
[t2,y2] = ode45(@(t,y2) odefun(t,y2,Sigma_2,Beta_2,Rho_2), tspan_2, ic_2); % ode45 function
%% Figure of Problem# 2
figure
plot3(y2(:,1),y2(:,2),y2(:,3))
xlabel(' x ') 
ylabel(' y ') 
zlabel(' z ')
title('Problem# 2','Color','Blue');
%% Plot z vs x
figure
plot(y2(:,1),y2(:,3))
xlabel(' x ') 
ylabel(' z ') 
title('Problem# 2','Color','Blue');
%% Answer to question:
disp('According to the 3-D plot, these orbits does not have overlap and pass from above or below each other.')
%% Problem# 3
figure
subplot(3,1,1);
plot(t2,y2(:,1));
title('x(t)')

subplot(3,1,2);
plot(t2,y2(:,2));
title('y(t)')

subplot(3,1,3);
plot(t2,y2(:,3));
title('z(t)')
% suptitle('Problem#1')
annotation('textbox', [0 0.9 1 0.1], ...
    'String', 'Problem# 2', ...
    'FontSize',10, ...
    'Color','Blue', ...
    'EdgeColor', 'none', ...
    'HorizontalAlignment', 'center')