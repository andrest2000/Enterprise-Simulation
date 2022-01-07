close all
clear
clc 
home
%con este algoritmo, se puede denterminar cual es procentaje de efectividad
% del escudo magnetico definiendo una superficie esferica con las posiciones iniclales de nt particulas 
n=40; 
nt=n^2; %numero total de partículas disparadas (puede prolongarse mucho el tiempo de calculo si se ponen numeros muy g
[theta,phi]=meshgrid(linspace(0,2*pi,n),linspace(0,pi,n));
i=[5e7.*ones(1,10),zeros(1,10);10.*ones(1,10),zeros(1,10)]; %matriz intensidades y radios de espiras 2x20
pc=0.05.*ones(1,nt); %vector % de c 1xnt
q=2*(1.67e-19).*ones(1,nt); %vector cargas 1xnt
m=4*(1.67e-27).*ones(1,nt); %vector masas 1xnt
rr=[0;0;0]*ones(1,nt); %matriz posiciones a las que se apuntan los disparos
rm=[0,0,0,0,30,-30,30,-30,30,-30,zeros(1,10);0,-55,-55,-55,10,10,10,10,10,10,zeros(1,10);0,55,138,170,70,70,170,170,270,270,zeros(1,10)]; %matriz posiciones de las espiras 3x20
vm=[zeros(1,20);ones(1,10),zeros(1,10);zeros(1,20)]; %matriz momentos magnéticos 3x20 (han de ser unitarios)
l=400; %radio de las superficie esferica a donde se dirtribuyen las posiciones de disparo.
dt=3e-7; %paso de tiempo
tf=5e-5; %tiempo total de integracion
rox=l.*sin(phi).*cos(theta);
roy=l.*sin(phi).*sin(theta);
roz=(l.*cos(phi))+103.5;
for t2=1:n
    for t1=1:n
        ro(:,n*(t2-1)+t1)=[rox(t1,t2);roy(t1,t2);roz(t1,t2)]; %matriz 3xnt que contiene las posiciones iniciales de las nt particulas disparadas
   end
end
[r,v,a]=enterpriseHiper(i,q,m,ro,pc,dt,tf,rr,rm,vm);
ntray=length(r(1,:,1)); %numero de puntos de la trayectoria obtenidos
golpp=(r(:,:,:)<(ones(3,ntray,nt).*[80;62.6;284])).*((ones(3,ntray,nt).*[-80;-82.5;-67])<r(:,:,:));
golpp1=sum(golpp,1);
golpp2=(golpp1==(3.*ones(1,ntray,nt)));
golppt=(sum(golpp2,2)>=1);
ngolpt=sum(golppt); %numero de particulas que entran en la region de seguridad
posgolp1=find(golppt);
for t1=1:nt
   if golppt(t1)==1
         posgolp(:,t1)=ro(:,t1); %matriz 3xnt de  que contiene las posiciones iniciales (en cada columna) de las particulas que entran en la region de seguridad
                                 %y aparecen ceros en las columnas de las particulas que no lo hacen, en correspondencia con las coordenadas de la segunda dimension de la matriz ro
         traygolp(:,:,t1)=r(:,:,t1); %hipermatriz 3xntrayxnt que contiene las trayectorias de las particulas que entran en la region de seguridad (en cada nt) 
                                     %y contiene ceros en las coordenadas nt (de la hipermatriz) para las particulas que no lo hacen
   else 
          posgolp(:,t1)=zeros(3,1);
          traygolp(:,:,t1)=zeros(3,ntray,1);
   end
       
end

nposgolp1e=sum(posgolp==[0;0;l+103.5],1); %por como hemos definido la superficie esferica, la posicion [0;0;l+103.5] se repite, por ello debemos elimarlas.
nposgolpe=sum(nposgolp1e==3);
re=100*(1-((ngolpt-nposgolpe)/(nt-n))); %porcentaje de efectividad

plot3(posgolp(1,:),posgolp(2,:),posgolp(3,:),'or')
hold on
%plot3(traygolp(1,:,7),traygolp(2,:,7),traygolp(3,:,7),'k') %si se quiere
%representar las trayectorias.
axis equal
hold on
p1=[80;80;200];
p2=[-80;80;200];
p3=[80;80;-200];
p4=[-80;80;-200];
p5=[80;-80;200];
p6=[-80;-80;200];
p7=[80;-80;-200];
p8=[-80;-80;-200];
plot3([80,-80],[62.5,62.5],[284,284],'g');
plot3([80,-80],[-82.5,-82.5],[284,284],'g');
plot3([80,-80],[-82.5,-82.5],[-67,-67],'g');
plot3([80,-80],[62.5,62.5],[-67,-67],'g');
plot3([80,80],[-82.5,-82.5],[284,-67],'g');
plot3([-80,-80],[-82.5,-82.5],[284,-67],'g');
plot3([80,80],[62.5,62.5],[284,-67],'g');
plot3([-80,-80],[62.5,62.5],[284,-67],'g');
plot3([-80,-80],[62.5,-82.5],[284,284],'g');
plot3([80,80],[62.5,-82.5],[284,284],'g');
plot3([-80,-80],[62.5,-82.5],[-67,-67],'g');
plot3([80,80],[62.5,-82.5],[-67,-67],'g');
grid on 
xlabel('x')
ylabel('y')
zlabel('z')

save('trayc.mat',['traygolp'])
