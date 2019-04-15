%initial conditions
clear all;
x0=[1;0;0]; %x1,x2,x3

%system dynamics
A=[ 0   1   0;
    0  -1  50;
    0 -50 10];
B=[0;0;1];
C=1*eye(3);
D=[0;0;0];

%controller
Q=10*[1,0,0;   %penalize x1 error
    0,1,0;  %penalize x2 error
    0,0,1]; %penalize x3 error
R=1;     %penalize actuator error

K=lqr(A,B,Q,R);

%closed loop system
sys=ss((A-B*K),B,C,D);

%run respose to initial condition
[Y, T, X]=initial(sys, x0);

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%create figures
if ~exist('h1','var')
    h1=figure('Position',[100 670 670 238]);
    title('Response to Initial Condition', 'Fontsize',14);
    xlabel('time/s')
    h1.ToolBar='none';
end

if ~exist('h2','var')
    h2=figure('Position',[100 390 670 234]);
    title('Actuator Effort', 'Fontsize',14);
    h2.ToolBar='none';
end
if ~exist('h3','var')
    h3=figure('Position',[100 80 670 236]);
    title('Pole/Zero Map', 'Fontsize',14);
    h3.ToolBar='none';
end

%plot response

set(0, 'currentfigure', h1);
hold all
p1=plot(T, Y(:,1), 'Linewidth',2);
grid on;

%plot actuator effort

set(0, 'currentfigure', h2);
hold all
p2=plot(T, -K * X', 'Linewidth',2);
grid on;


%plot poles and zeros

set(0, 'currentfigure', h3);
hold all
pzmap(sys);




