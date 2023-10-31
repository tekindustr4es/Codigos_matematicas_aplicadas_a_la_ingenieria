function xp =cap5_pendulo(t,x)
q=x(1);
qp=x(2);
m=5;
lc=0.01;
g=9.81;
b=0.17;
fc=0.45;
lr=0.16;
tau=1.5*sin(t);
qpp=(tau-b*qp-fc*tanh(100000*qp)-m*g*lc*sin(q))/lr;
xp=[qp; %xp(1)=x(2) velocidad articular
qpp];
end