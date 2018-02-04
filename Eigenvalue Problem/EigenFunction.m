clc;
clear all;
format long
hc=197.3269788;      % hbar*c (Mev ft)
m=938.27231;       % rest mass of Proton (Mev/c^2)
% M=14*m;              % Z=N=8
q=(hc)^2/(2*m);      % Mev ft^2
V=-51;               %Mev
a=.67;               %fm
r0=1.27;             %fm
A=16;
R0=r0*(16)^(1/3);
d=.01;
l=0;
N=round(4*(R0+1)/d);
r=zeros(1,N);
U=zeros(1,N);
H=zeros(N,N);
md=mod(l,2);
alpha=(1)^md -2*(md-1);
% for j=16:A
%     R=r0*j^(1/3);
%     M=j*m;               % Z=N=8
%     q=(hc)^2/(2*M);      % Mev ft^2
%     N=round(2*(R+1)/d);
for i=1:N
    r(i)=(i-(1/2))*d;
    U(i)=V/(1+exp((r(i)-R0)/a));
    if  i==1
        H(1,1)=alpha*q/d^2 + q*l*(l+1)/(r(1))^2 + U(1);
        H(1,2)=-q/d^2;
    elseif i==N
        H(N,N-1)=-q/d^2 + q*l*(l+1)/(r(N))^2 + U(N);
        H(N,N)=2*q/d^2;
    else
        H(i,i-1)=-q/d^2;
        H(i,i)=2*q/d^2+q*l*(l+1)/(r(i))^2 + U(i);
        H(i,i+1)=-q/d^2;
    end
 end
[EV,E]  = eig(H); % Compute and sort the e-values
% E(E>0)=[];
% S=size(E);
% AA=j*ones(S);
% hold on
% plot(AA,E,'.k')
% end
% xlabel('A')
% ylabel('E_n MeV')
% for i=1:N
%     if E(i)<0
%         E(i)
%     elseif
%         break
%     end
% end
        
for i=1:N
    if E(i,i)<0
        i
    end
end
