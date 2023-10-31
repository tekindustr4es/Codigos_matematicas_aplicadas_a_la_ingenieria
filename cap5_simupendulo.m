clc;
clear all;
close all;

ti=0;
tf = 10;
h=0.0025;
ts=ti:h:tf;
opciones=odeset('RelTol',1e-3,'InitialStep',2.5e-3,'MaxStep',2.5e-3);
[t,x]=ode45('cap5_pendulo',ts,[0;0],opciones);
x1=0.45*sin(x(:,1));
y1=0.45*cos(x(:,1));
plot(t,(180/pi)*x(:,1),t,(180/pi)*x(:,2))
