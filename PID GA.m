```
% clear all, close all, clc

dt=0.001;
popsize=25;
MaxGeneration=10;

% 1. transfer function 2. objective function (cost function)

state_dot=states_model(states,inputs); % dynamical system

options=optimoptions(@ga,'Populationsize',Popsize,'MaxGenerations',MaxGenerations)

[x,fval]=ga(@(K)pidtest(G,dt,K),3-eye(3),zeros(3,1))

%% pidtest
function J=pidtest(G,dt,parms)
s=tf('s');
K=parms(1)+parmes(2)/s+parms(3)*s/(1+0.01*s);
Loop=series(K,G);
ClosedLoop=feedback(Loop,1);

t=0:dt:20;
[y,t]=step(CloosedLoop,t);

CONTROLtf=K/(1+K*G);
u=lsim(K,1-y,t);

Q=1;
R=0.001;
J=dt*sum(Q*(1-y(:)).^2+R*u(:).^2)

[y,t]=step(ClosedLoop,t);



```
