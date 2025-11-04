close all; clear;
clc;

R=0.04445;% radius of wheels [m]       
D= 0.393;% distance between the two wheels [m]

T=[[R/2 R/2];[R/D -R/D]]; %Transformation Matrix
Tinv=inv(T);
Ts= 1/60;       % sampling time [s]
X0=[0 0 0]';% Initial condition of Qbot
% k=0:Ts:2*pi*20;


% t=0; % Constants

eta = 1;         % Constant value for eta
alpha = 4;        % Constant value for alpha

%Velocity trajectory
xdr0=eta*(1/alpha); %trajectory velocity along x axis
ydr0=eta*(1/(2*alpha));%trajectory velocity along y axis

v0=sqrt(xdr0.^2+ydr0.^2); %Linear velocity of the trajectoryT

%PID parameters
kp1=2; kp2=kp1;
kd1=1; kd2=kd1;

wrmax=8.0; %Qbot Right wheel limits
wlmax=wrmax; %Qbot Left wheel limits



% x0=-0.25; y0=-0.75; theta0=0;
