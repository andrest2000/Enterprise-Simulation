clear
clc
close all
%con este algoritmo se usa la funcion enterprise para simular la
%magnetosfera terrestre. Se simularan para un proton y para un electron.
R=6.371e6; 
muo=(4*pi)*(10^-7);
mo=((25e-9)*4*pi*(R^3))/(1.05*muo);
m=[1.67e-27,9.11e-31]; 
q=[1.6e-19,-1.6e-19];
pc=0.003.*ones(1,2); %vector 1x2 que contiene las velocidades iniciales de las dos particulas
i=[mo,zeros(1,19);1/(pi^0.5),zeros(1,19)];
rr=zeros(3,2);
rm=[zeros(1,20);zeros(1,20);zeros(1,20)];
ll=3e7;
ro=[1e7,1e8;0,0;0,0]; %matriz 3x2 que contiene las posiciones iniciales de las dos particulas
vm=[zeros(1,20);zeros(1,20);1,zeros(1,19)];
tf=120; 
dt=0.1;
[r,v,a]=enterprise(i,q,m,ro,pc,dt,tf,rr,rm,vm);
plot3(r(1,:,2),r(2,:,2),r(3,:,2),'r')
hold on
plot3(r(1,:,1),r(2,:,1),r(3,:,1),'b')
[X,Y,Z]=sphere(100);
mesh(R.*X,R.*Y,R.*Z)
xlabel('x')
ylabel('y')
zlabel('z')
grid on
axis equal