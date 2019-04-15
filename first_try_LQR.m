close all;

%initial conditions
x0=[3;  %3 radians
    0]; %0 rad/s
%system dynamics
A=[0    1;
   0.01 0];
B=[0;1];
C=[1 0];
D=0;

%control law
Q=[1 0;  %to penalize angular error
    0 1];%to penalize angular rate
R=1;     %to penalize thruster effort
K=lqr(A, B, Q, R);

%close loop system
sys=ss((A-B*K), B, C, D);

%run respose to initial condition
t=0:0.005:30;
[y,t,x]=initial(sys,x0,t);


%plot1=plot(t,x);
plot2=plot(t,y);
grid on;