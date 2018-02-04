function dydt = odefun(t,y,S,B,R)
% ODE function that takes Sigma,Rho, and Beta and calculate the
% differentiate of intensity of the fluid motion.
dydt = zeros(3,1);

dydt(1) = S*(y(2)-y(1)); %y(1) stands for x
dydt(2) = y(1)*(R -y(3))-y(2); %y(2) stands for y
dydt(3) = y(1)*y(2) - B*y(3); %y(3) stands for z
end