```
% pidtest
function J=pidtest(G,dt,parms)

s=tf('s');
K=parms(1)+parmes(2)/s+parms(3)*s/(1+0.01*s); % K_proportional, K_integral, K_derivative  

Loop=series(K,G); % open loop 'series' build the left to the right -->K-->G-->
ClosedLoop=feedback(Loop,1);

t=0:dt:20;
[y,t]=step(CloosedLoop,t); % step can see the nice fast rise 

CONTROLtf=K/(1+K*G);
u=lsim(K,1-y,t);

% build the cost fuinction
Q=1;
R=0.001;
J=dt*sum(Q*(1-y(:)).^2+R*u(:).^2) % how long it takes the state to the set point, error squared*Q+how expensive of u squared*R

[y,t]=step(ClosedLoop,t);
plot(t,y,'linewidth',2,'color','b');
set(gca,'color','k','xcolor','w','ycolor','w')
set(gcf,'color','k')
drawnow


```
