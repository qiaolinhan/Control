
% 1. define a system-->some transfer function
% 2. define some objective fucntion 'J'
% 3. wrap this GA command around this


% clear all, close all, clc

dt=0.001;
popsize=25; %each generation have the population size of 25 individuals
MaxGeneration=10; %10 generation

% we want to find the system we are going to optimize the PID around, so start with a transfer function of S.
s=tf('s');
% the system G
G=1/(s*(s*s+s+1))

options=optimoptions(ga,'Populationsize',Popsize,'MaxGenerations',MaxGenerations,'OutputFcn',@myfun)
[x,fval]=ga(@(K)pidtest(G,dt,K),3-eye(3),zeros(3,1)) % ga: use GA. @(K): what parameter to optimize, so wrap 'pidtest' snd login G and dt

