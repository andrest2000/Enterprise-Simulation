close all
clear
clc
home
clearvars -except re y
n=randi(500) %aqui se determina que rango de valores (enteros) se quiere 
%establecer para la aleatoridad del numero de particulas que se pretende probar
tf=6e-4;
dt=5e-7;
for ttt=1:n %con este bucle, se define de forma aleatorea si se disparan protones, electrones, o partculas alfa
    h=randi(3);
    if h==1
        q(ttt)=1.6e-19; 
        m(ttt)=1.67e-27;
    elseif h==2
        q(ttt)=-1.6e-19;
        m(ttt)=9.11e-31;
    else 
        q(ttt)=2*(1.6e-19);
        m(ttt)=4*(1.67e-27);
    end
end
q=q(1:n);
m=m(1:n);
i=[1e8.*ones(1,10),zeros(1,10);10.*ones(1,10),zeros(1,10)]; %matriz 2x20 que contiene las intensidades y los radios de las espiras
rm=[0,0,0,0,30,-30,30,-30,30,-30,zeros(1,10);0,-55,-55,-55,10,10,10,10,10,10,zeros(1,10);0,55,138,170,70,70,170,170,270,270,zeros(1,10)]; %matriz 3x20 que contiene las posiciones de las espiras
vm=[zeros(1,20);ones(1,10),zeros(1,10);zeros(1,20)];%vectores que indican los momentos magneticos de las espiras, (deben ser unitarios).
pc=(0.05.*rand(1,n))+0.01; %vector que almacena las velocidades aleatoreas de cada particula entre el 1 y 5 por ciento de c

for tt=1:n % con los siguientes tres bucles se definen de forma aleatoria la posicion a la que las particulas son disparadas 
    if randi(2)==2
        al1(tt)=1;
    else
        al1(tt)=-1;
    end
end
al1=al1(1:n);
    rrx=(80.*rand(1,n)).*al1;
    for tt=1:n
    if randi(2)==2
        al2(tt)=1;
    else
        al2(tt)=-1;
    end
    end
    al2=al2(1:n);
    rry=(62.5.*rand(1,n)).*al2;
     for tt=1:n
    if randi(2)==2
        al3(tt)=1;
    else
        al3(tt)=-1;
    end
     end
     al3=al3(1:n);
rrz=(284.*rand(1,n)).*al3;
rr=[rrx;rry;rrz];
theta=(2*pi).*rand(1,n); %se define en coordenadas polares y de forma aleatorea las posiciones iniciales a las que se disparan las particulas 
phi=(pi).*rand(1,n);
l=(1600.*rand(1,n))+400;
ro=[l.*sin(phi).*cos(theta);l.*sin(phi).*sin(theta);(l.*cos(phi))+103.5];
[r,v,a]=enterprise(i,q,m,ro,pc,dt,tf,rr,rm,vm);
ntray=length(r(1,:,1)); %numero de puntos de la trayectoria obtenidos
golpp=(r(:,:,:)<ones(3,ntray,n).*[80;62.6;284])&(ones(3,ntray,n).*[-80;-82.5;-67]<r(:,:,:));
golpp1=sum(golpp,1);
golpp2=(golpp1==(3.*ones(1,ntray,n)));
golppt=(sum(golpp2,2)>=1);
ngolpt=sum(golppt); %numero de particulas que entran en la region de seguridad
posgolp1=find(golppt);
for t1=1:n
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








