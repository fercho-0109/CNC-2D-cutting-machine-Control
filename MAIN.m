%Simulation of a CNC 2D cuttign machine 
%
%-----SIMULATION IN MATLAB/Simulink--------------------------
%
% #################################################################################
% Edited by Alexis Marino (alexismarino0109@gmail.com) September, 29th 2021
% #################################################################################
%
% Final project of the Industrial Automation coursea

% DC_MOTOR
% RATED VALUES
%
%Max Power 4 Kw
%Max Voltage 150V
%Max Armature current 20A
%
% Parameter
clear all
clc
J=0.1; % Motor and Load
B=0.029; % Motor and Load
Ra=1;
La=1e-3;
Ke=0.6;
Kt=0.6;
K=Ke;
conv=2*pi*2000;
Ge=tf(1,[La Ra]);
Gm=tf(1,[J B]);
G=zpk(feedback(Ge*Gm*Kt,Ke));
G1=(Ge*Gm*Kt);
pzplot(G,G1); % poles in close and open loop
DC_MOTORControl2;
Ge1=tf(0.6,[La Ra]);
a1=tf(K,[La/Ra 1]);
k2=10;
a2=tf([J*k2 B*k2] ,[1 0]);
G2=zpk(feedback(a1*a2*Gm,1))% trasfer fuction to see poles after control 
%pzplot(G1);


