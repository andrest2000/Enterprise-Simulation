function[r,v,a]=enterpriseHiper(i,q,m,ro,pc,dt,tf,rr,rm,vm)
%-Entradas:
%-i: matriz 2x20 que contiene las intensidades de las espiras y sus radios
%    correspondientes
%-q: vector 1xn que contiene las cargas de las particulas disparadas
%-m: vector 1xn que contiene las masas de las particulas disparadas
%-ro: matriz 3xn que contiene las posiciones iniciales de las particulas disparadas
%-pc: vector 1xn que contiene los porcentajes de la velocidad de la luz con las que las particulas son disparadas
%-dt: intervalos de tiempo (escalar)
%-tf: tiempo final (escalar)
%-rr: posicion hacia la que se apunta al disparar (vector columna)
%-rm: matriz 3x20 que contiene las posiciones de las espiras
%-vm: matriz 3x20 que contiene, en vectores unitarios, la direccion de los
%     momentos magneticos de las espiras.
%-Salidas:
%-r: hipermatriz 3xntxn que a lo largo de la segunda dimension contiene las
% posiciones de la trayectoria de la particula j, donde j es la coordenada de
% la tercera dimension de la hipermatriz.
%-v: hipermatriz 3xntxn que a lo largo de la segunda dimension contiene las
% velocidades para cada tiempo de la particula j, donde j es la coordenada de
% la tercera dimension de la hipermatriz.
%-a: hipermatriz 3xntxn que a lo largo de la segunda dimension contiene las
% aceleraciones para cada tiempo de la particula j, donde j es la coordenada de
% la tercera dimension de la hipermatriz.
mo1=i(1,1)*(pi*(i(2,1)^2));
mo2=i(1,2)*(pi*(i(2,2)^2));
mo3=i(1,3)*(pi*(i(2,3)^2));
mo4=i(1,4)*(pi*(i(2,4)^2));
mo5=i(1,5)*(pi*(i(2,5)^2));
mo6=i(1,6)*(pi*(i(2,6)^2));
mo7=i(1,7)*(pi*(i(2,7)^2));
mo8=i(1,8)*(pi*(i(2,8)^2));
mo9=i(1,9)*(pi*(i(2,9)^2));
mo10=i(1,10)*(pi*(i(2,10)^2));
mo11=i(1,11)*(pi*(i(2,11)^2));
mo12=i(1,12)*(pi*(i(2,12)^2));
mo13=i(1,13)*(pi*(i(2,13)^2));
mo14=i(1,14)*(pi*(i(2,14)^2));
mo15=i(1,15)*(pi*(i(2,15)^2));
mo16=i(1,16)*(pi*(i(2,16)^2));
mo17=i(1,17)*(pi*(i(2,17)^2));
mo18=i(1,18)*(pi*(i(2,18)^2));
mo19=i(1,19)*(pi*(i(2,19)^2));
mo20=i(1,20)*(pi*(i(2,20)^2));
c=3e8;
mm1=mo1.*vm(:,1);
mm2=mo2.*vm(:,2);
mm3=mo3.*vm(:,3);
mm4=mo4.*vm(:,4);
mm5=mo5.*vm(:,5);
mm6=mo6.*vm(:,6);
mm7=mo7.*vm(:,7);
mm8=mo8.*vm(:,8);
mm9=mo9.*vm(:,9);
mm10=mo10.*vm(:,10);
mm11=mo11.*vm(:,11);
mm12=mo12.*vm(:,12);
mm13=mo13.*vm(:,13);
mm14=mo14.*vm(:,14);
mm15=mo15.*vm(:,15);
mm16=mo16.*vm(:,16);
mm17=mo17.*vm(:,17);
mm18=mo18.*vm(:,18);
mm19=mo19.*vm(:,19);
mm20=mo20.*vm(:,20);
muo=4*pi*(10^-7);
rm1=rm(:,1);
rm2=rm(:,2);
rm3=rm(:,3);
rm4=rm(:,4);
rm5=rm(:,5);
rm6=rm(:,6);
rm7=rm(:,7);
rm8=rm(:,8);
rm9=rm(:,9);
rm10=rm(:,10);
rm11=rm(:,11);
rm12=rm(:,12);
rm13=rm(:,13);
rm14=rm(:,14);
rm15=rm(:,15);
rm16=rm(:,16);
rm17=rm(:,17);
rm18=rm(:,18);
rm19=rm(:,19);
rm20=rm(:,20);
r(:,1,:)=ro;
pct(1,1,:)=pc;
v(:,1,:)=operador(((-pct.*(3e8))./(((((r(1,1,:)-rr(1,1,:)).^2)+((r(2,1,:)-rr(2,1,:)).^2)+((r(3,1,:)-rr(3,1,:)).^2))).^0.5)),(r(:,1,:)-rr(:,1,:)));
t=[0:dt:tf];
n=length(t);
for t1=1:n-1
    B11(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm1,(r(:,t1,:)-rm1)),(r(:,t1,:)-rm1)))-((mm1(:,1)).*(((sum((r(:,t1,:)-rm1).^2,1))))))),1./((((sum((r(:,t1,:)-rm1).^2,1)))).^(5/2)));
    B12(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm2,(r(:,t1,:)-rm2)),(r(:,t1,:)-rm2)))-((mm2(:,1)).*(((sum((r(:,t1,:)-rm2).^2,1))))))),1./((((sum((r(:,t1,:)-rm2).^2,1)))).^(5/2)));
    B13(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm3,(r(:,t1,:)-rm3)),(r(:,t1,:)-rm3)))-((mm3(:,1)).*(((sum((r(:,t1,:)-rm3).^2,1))))))),1./((((sum((r(:,t1,:)-rm3).^2,1)))).^(5/2)));
    B14(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm4,(r(:,t1,:)-rm4)),(r(:,t1,:)-rm4)))-((mm4(:,1)).*(((sum((r(:,t1,:)-rm4).^2,1))))))),1./((((sum((r(:,t1,:)-rm4).^2,1)))).^(5/2)));
    B15(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm5,(r(:,t1,:)-rm5)),(r(:,t1,:)-rm5)))-((mm5(:,1)).*(((sum((r(:,t1,:)-rm5).^2,1))))))),1./((((sum((r(:,t1,:)-rm5).^2,1)))).^(5/2)));
    B16(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm6,(r(:,t1,:)-rm6)),(r(:,t1,:)-rm6)))-((mm6(:,1)).*(((sum((r(:,t1,:)-rm6).^2,1))))))),1./((((sum((r(:,t1,:)-rm6).^2,1)))).^(5/2)));
    B17(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm7,(r(:,t1,:)-rm7)),(r(:,t1,:)-rm7)))-((mm7(:,1)).*(((sum((r(:,t1,:)-rm7).^2,1))))))),1./((((sum((r(:,t1,:)-rm7).^2,1)))).^(5/2)));
    B18(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm8,(r(:,t1,:)-rm8)),(r(:,t1,:)-rm8)))-((mm8(:,1)).*(((sum((r(:,t1,:)-rm8).^2,1))))))),1./((((sum((r(:,t1,:)-rm8).^2,1)))).^(5/2)));
    B19(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm9,(r(:,t1,:)-rm9)),(r(:,t1,:)-rm9)))-((mm9(:,1)).*(((sum((r(:,t1,:)-rm9).^2,1))))))),1./((((sum((r(:,t1,:)-rm9).^2,1)))).^(5/2)));
    B110(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm10,(r(:,t1,:)-rm10)),(r(:,t1,:)-rm10)))-((mm10(:,1)).*(((sum((r(:,t1,:)-rm10).^2,1))))))),1./((((sum((r(:,t1,:)-rm10).^2,1)))).^(5/2)));
    B111(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm11,(r(:,t1,:)-rm11)),(r(:,t1,:)-rm11)))-((mm11(:,1)).*(((sum((r(:,t1,:)-rm11).^2,1))))))),1./((((sum((r(:,t1,:)-rm11).^2,1)))).^(5/2)));
    B112(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm12,(r(:,t1,:)-rm12)),(r(:,t1,:)-rm12)))-((mm12(:,1)).*(((sum((r(:,t1,:)-rm12).^2,1))))))),1./((((sum((r(:,t1,:)-rm12).^2,1)))).^(5/2)));
    B113(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm13,(r(:,t1,:)-rm13)),(r(:,t1,:)-rm13)))-((mm13(:,1)).*(((sum((r(:,t1,:)-rm13).^2,1))))))),1./((((sum((r(:,t1,:)-rm13).^2,1)))).^(5/2)));    
    B114(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm14,(r(:,t1,:)-rm14)),(r(:,t1,:)-rm14)))-((mm14(:,1)).*(((sum((r(:,t1,:)-rm14).^2,1))))))),1./((((sum((r(:,t1,:)-rm14).^2,1)))).^(5/2)));
    B115(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm15,(r(:,t1,:)-rm15)),(r(:,t1,:)-rm15)))-((mm15(:,1)).*(((sum((r(:,t1,:)-rm15).^2,1))))))),1./((((sum((r(:,t1,:)-rm15).^2,1)))).^(5/2)));
    B116(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm16,(r(:,t1,:)-rm16)),(r(:,t1,:)-rm16)))-((mm16(:,1)).*(((sum((r(:,t1,:)-rm16).^2,1))))))),1./((((sum((r(:,t1,:)-rm16).^2,1)))).^(5/2)));
    B117(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm17,(r(:,t1,:)-rm17)),(r(:,t1,:)-rm17)))-((mm17(:,1)).*(((sum((r(:,t1,:)-rm17).^2,1))))))),1./((((sum((r(:,t1,:)-rm17).^2,1)))).^(5/2)));
    B118(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm18,(r(:,t1,:)-rm18)),(r(:,t1,:)-rm18)))-((mm18(:,1)).*(((sum((r(:,t1,:)-rm18).^2,1))))))),1./((((sum((r(:,t1,:)-rm18).^2,1)))).^(5/2)));
    B119(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm19,(r(:,t1,:)-rm19)),(r(:,t1,:)-rm19)))-((mm19(:,1)).*(((sum((r(:,t1,:)-rm19).^2,1))))))),1./((((sum((r(:,t1,:)-rm19).^2,1)))).^(5/2)));
    B120(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm20,(r(:,t1,:)-rm20)),(r(:,t1,:)-rm20)))-((mm20(:,1)).*(((sum((r(:,t1,:)-rm20).^2,1))))))),1./((((sum((r(:,t1,:)-rm20).^2,1)))).^(5/2)));
    B1(:,1,:)=B11+B12+B13+B14+B15+B16+B17+B18+B19+B110+B111+B112+B113+B114+B115+B116+B117+B118+B119+B120;
    kv1(:,1,:)=v(:,t1,:);
    qm=q./m;
    ka1(:,1,:)=operador(qm,([(kv1(2,1,:).*B1(3,1,:))-(kv1(3,1,:).*B1(2,1,:));(kv1(3,1,:).*B1(1,1,:))-(kv1(1,1,:).*B1(3,1,:));(kv1(1,1,:).*B1(2,1,:))-(kv1(2,1,:).*B1(1,1,:))]));
    kv2(:,1,:)=kv1+((0.5*dt).*ka1);
    B21(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm1,(r(:,t1,:)-rm1+(kv1.*0.5.*dt))),(r(:,t1,:)-rm1+(kv1.*0.5.*dt))))-((mm1(:,1)).*(sum((r(:,t1,:)-rm1+(kv1.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm1+(kv1.*0.5.*dt)).^2,1)).^(5/2)));
    B22(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm2,(r(:,t1,:)-rm2+(kv1.*0.5.*dt))),(r(:,t1,:)-rm2+(kv1.*0.5.*dt))))-((mm2(:,1)).*(sum((r(:,t1,:)-rm2+(kv1.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm2+(kv1.*0.5.*dt)).^2,1)).^(5/2)));
    B23(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm3,(r(:,t1,:)-rm3+(kv1.*0.5.*dt))),(r(:,t1,:)-rm3+(kv1.*0.5.*dt))))-((mm3(:,1)).*(sum((r(:,t1,:)-rm3+(kv1.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm3+(kv1.*0.5.*dt)).^2,1)).^(5/2)));
    B24(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm4,(r(:,t1,:)-rm4+(kv1.*0.5.*dt))),(r(:,t1,:)-rm4+(kv1.*0.5.*dt))))-((mm4(:,1)).*(sum((r(:,t1,:)-rm4+(kv1.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm4+(kv1.*0.5.*dt)).^2,1)).^(5/2)));
    B25(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm5,(r(:,t1,:)-rm5+(kv1.*0.5.*dt))),(r(:,t1,:)-rm5+(kv1.*0.5.*dt))))-((mm5(:,1)).*(sum((r(:,t1,:)-rm5+(kv1.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm5+(kv1.*0.5.*dt)).^2,1)).^(5/2)));
    B26(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm6,(r(:,t1,:)-rm6+(kv1.*0.5.*dt))),(r(:,t1,:)-rm6+(kv1.*0.5.*dt))))-((mm6(:,1)).*(sum((r(:,t1,:)-rm6+(kv1.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm6+(kv1.*0.5.*dt)).^2,1)).^(5/2)));
    B27(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm7,(r(:,t1,:)-rm7+(kv1.*0.5.*dt))),(r(:,t1,:)-rm7+(kv1.*0.5.*dt))))-((mm7(:,1)).*(sum((r(:,t1,:)-rm7+(kv1.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm7+(kv1.*0.5.*dt)).^2,1)).^(5/2)));
    B28(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm8,(r(:,t1,:)-rm8+(kv1.*0.5.*dt))),(r(:,t1,:)-rm8+(kv1.*0.5.*dt))))-((mm8(:,1)).*(sum((r(:,t1,:)-rm8+(kv1.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm8+(kv1.*0.5.*dt)).^2,1)).^(5/2)));
    B29(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm9,(r(:,t1,:)-rm9+(kv1.*0.5.*dt))),(r(:,t1,:)-rm9+(kv1.*0.5.*dt))))-((mm9(:,1)).*(sum((r(:,t1,:)-rm9+(kv1.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm9+(kv1.*0.5.*dt)).^2,1)).^(5/2)));
    B210(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm10,(r(:,t1,:)-rm10+(kv1.*0.5.*dt))),(r(:,t1,:)-rm10+(kv1.*0.5.*dt))))-((mm10(:,1)).*(sum((r(:,t1,:)-rm10+(kv1.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm10+(kv1.*0.5.*dt)).^2,1)).^(5/2)));
    B211(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm11,(r(:,t1,:)-rm11+(kv1.*0.5.*dt))),(r(:,t1,:)-rm11+(kv1.*0.5.*dt))))-((mm11(:,1)).*(sum((r(:,t1,:)-rm11+(kv1.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm11+(kv1.*0.5.*dt)).^2,1)).^(5/2)));
    B212(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm12,(r(:,t1,:)-rm12+(kv1.*0.5.*dt))),(r(:,t1,:)-rm12+(kv1.*0.5.*dt))))-((mm12(:,1)).*(sum((r(:,t1,:)-rm12+(kv1.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm12+(kv1.*0.5.*dt)).^2,1)).^(5/2)));
    B213(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm13,(r(:,t1,:)-rm13+(kv1.*0.5.*dt))),(r(:,t1,:)-rm13+(kv1.*0.5.*dt))))-((mm13(:,1)).*(sum((r(:,t1,:)-rm13+(kv1.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm13+(kv1.*0.5.*dt)).^2,1)).^(5/2)));
    B214(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm14,(r(:,t1,:)-rm14+(kv1.*0.5.*dt))),(r(:,t1,:)-rm14+(kv1.*0.5.*dt))))-((mm14(:,1)).*(sum((r(:,t1,:)-rm14+(kv1.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm14+(kv1.*0.5.*dt)).^2,1)).^(5/2)));
    B215(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm15,(r(:,t1,:)-rm15+(kv1.*0.5.*dt))),(r(:,t1,:)-rm15+(kv1.*0.5.*dt))))-((mm15(:,1)).*(sum((r(:,t1,:)-rm15+(kv1.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm15+(kv1.*0.5.*dt)).^2,1)).^(5/2)));
    B216(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm16,(r(:,t1,:)-rm16+(kv1.*0.5.*dt))),(r(:,t1,:)-rm16+(kv1.*0.5.*dt))))-((mm16(:,1)).*(sum((r(:,t1,:)-rm16+(kv1.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm16+(kv1.*0.5.*dt)).^2,1)).^(5/2)));
    B217(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm17,(r(:,t1,:)-rm17+(kv1.*0.5.*dt))),(r(:,t1,:)-rm17+(kv1.*0.5.*dt))))-((mm17(:,1)).*(sum((r(:,t1,:)-rm17+(kv1.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm17+(kv1.*0.5.*dt)).^2,1)).^(5/2)));
    B218(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm18,(r(:,t1,:)-rm18+(kv1.*0.5.*dt))),(r(:,t1,:)-rm18+(kv1.*0.5.*dt))))-((mm18(:,1)).*(sum((r(:,t1,:)-rm18+(kv1.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm18+(kv1.*0.5.*dt)).^2,1)).^(5/2)));
    B219(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm19,(r(:,t1,:)-rm19+(kv1.*0.5.*dt))),(r(:,t1,:)-rm19+(kv1.*0.5.*dt))))-((mm19(:,1)).*(sum((r(:,t1,:)-rm19+(kv1.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm19+(kv1.*0.5.*dt)).^2,1)).^(5/2)));
    B220(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm20,(r(:,t1,:)-rm20+(kv1.*0.5.*dt))),(r(:,t1,:)-rm20+(kv1.*0.5.*dt))))-((mm20(:,1)).*(sum((r(:,t1,:)-rm20+(kv1.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm20+(kv1.*0.5.*dt)).^2,1)).^(5/2)));
    B2(:,1,:)=B21+B22+B23+B24+B25+B26+B27+B28+B29+B210+B211+B212+B213+B214+B215+B216+B217+B218+B219+B220;
    ka2(:,1,:)=operador(qm,([(kv2(2,1,:).*B2(3,1,:))-(kv2(3,1,:).*B2(2,1,:));(kv2(3,1,:).*B2(1,1,:))-(kv2(1,1,:).*B2(3,1,:));(kv2(1,1,:).*B2(2,1,:))-(kv2(2,1,:).*B2(1,1,:))]));
    kv3(:,1,:)=kv1+((0.5*dt).*ka2);
    B31(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm1,(r(:,t1,:)-rm1+(kv2.*0.5.*dt))),(r(:,t1,:)-rm1+(kv2.*0.5.*dt))))-((mm1(:,1)).*(sum((r(:,t1,:)-rm1+(kv2.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm1+(kv2.*0.5.*dt)).^2,1)).^(5/2)));
    B32(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm2,(r(:,t1,:)-rm2+(kv2.*0.5.*dt))),(r(:,t1,:)-rm2+(kv2.*0.5.*dt))))-((mm2(:,1)).*(sum((r(:,t1,:)-rm2+(kv2.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm2+(kv2.*0.5.*dt)).^2,1)).^(5/2)));
    B33(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm3,(r(:,t1,:)-rm3+(kv2.*0.5.*dt))),(r(:,t1,:)-rm3+(kv2.*0.5.*dt))))-((mm3(:,1)).*(sum((r(:,t1,:)-rm3+(kv2.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm3+(kv2.*0.5.*dt)).^2,1)).^(5/2)));
    B34(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm4,(r(:,t1,:)-rm4+(kv2.*0.5.*dt))),(r(:,t1,:)-rm4+(kv2.*0.5.*dt))))-((mm4(:,1)).*(sum((r(:,t1,:)-rm4+(kv2.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm4+(kv2.*0.5.*dt)).^2,1)).^(5/2)));
    B35(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm5,(r(:,t1,:)-rm5+(kv2.*0.5.*dt))),(r(:,t1,:)-rm5+(kv2.*0.5.*dt))))-((mm5(:,1)).*(sum((r(:,t1,:)-rm5+(kv2.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm5+(kv2.*0.5.*dt)).^2,1)).^(5/2)));
    B36(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm6,(r(:,t1,:)-rm6+(kv2.*0.5.*dt))),(r(:,t1,:)-rm6+(kv2.*0.5.*dt))))-((mm6(:,1)).*(sum((r(:,t1,:)-rm6+(kv2.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm6+(kv2.*0.5.*dt)).^2,1)).^(5/2)));
    B37(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm7,(r(:,t1,:)-rm7+(kv2.*0.5.*dt))),(r(:,t1,:)-rm7+(kv2.*0.5.*dt))))-((mm7(:,1)).*(sum((r(:,t1,:)-rm7+(kv2.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm7+(kv2.*0.5.*dt)).^2,1)).^(5/2)));
    B38(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm8,(r(:,t1,:)-rm8+(kv2.*0.5.*dt))),(r(:,t1,:)-rm8+(kv2.*0.5.*dt))))-((mm8(:,1)).*(sum((r(:,t1,:)-rm8+(kv2.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm8+(kv2.*0.5.*dt)).^2,1)).^(5/2)));
    B39(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm9,(r(:,t1,:)-rm9+(kv2.*0.5.*dt))),(r(:,t1,:)-rm9+(kv2.*0.5.*dt))))-((mm9(:,1)).*(sum((r(:,t1,:)-rm9+(kv2.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm9+(kv2.*0.5.*dt)).^2,1)).^(5/2)));
    B310(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm10,(r(:,t1,:)-rm10+(kv2.*0.5.*dt))),(r(:,t1,:)-rm10+(kv2.*0.5.*dt))))-((mm10(:,1)).*(sum((r(:,t1,:)-rm10+(kv2.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm10+(kv2.*0.5.*dt)).^2,1)).^(5/2)));
    B311(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm11,(r(:,t1,:)-rm11+(kv2.*0.5.*dt))),(r(:,t1,:)-rm11+(kv2.*0.5.*dt))))-((mm11(:,1)).*(sum((r(:,t1,:)-rm11+(kv2.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm11+(kv2.*0.5.*dt)).^2,1)).^(5/2)));
    B312(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm12,(r(:,t1,:)-rm12+(kv2.*0.5.*dt))),(r(:,t1,:)-rm12+(kv2.*0.5.*dt))))-((mm12(:,1)).*(sum((r(:,t1,:)-rm12+(kv2.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm12+(kv2.*0.5.*dt)).^2,1)).^(5/2)));
    B313(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm13,(r(:,t1,:)-rm13+(kv2.*0.5.*dt))),(r(:,t1,:)-rm13+(kv2.*0.5.*dt))))-((mm13(:,1)).*(sum((r(:,t1,:)-rm13+(kv2.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm13+(kv2.*0.5.*dt)).^2,1)).^(5/2)));    
    B314(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm14,(r(:,t1,:)-rm14+(kv2.*0.5.*dt))),(r(:,t1,:)-rm14+(kv2.*0.5.*dt))))-((mm14(:,1)).*(sum((r(:,t1,:)-rm14+(kv2.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm14+(kv2.*0.5.*dt)).^2,1)).^(5/2)));
    B315(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm15,(r(:,t1,:)-rm15+(kv2.*0.5.*dt))),(r(:,t1,:)-rm15+(kv2.*0.5.*dt))))-((mm15(:,1)).*(sum((r(:,t1,:)-rm15+(kv2.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm15+(kv2.*0.5.*dt)).^2,1)).^(5/2)));
    B316(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm16,(r(:,t1,:)-rm16+(kv2.*0.5.*dt))),(r(:,t1,:)-rm16+(kv2.*0.5.*dt))))-((mm16(:,1)).*(sum((r(:,t1,:)-rm16+(kv2.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm16+(kv2.*0.5.*dt)).^2,1)).^(5/2)));
    B317(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm17,(r(:,t1,:)-rm17+(kv2.*0.5.*dt))),(r(:,t1,:)-rm17+(kv2.*0.5.*dt))))-((mm17(:,1)).*(sum((r(:,t1,:)-rm17+(kv2.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm17+(kv2.*0.5.*dt)).^2,1)).^(5/2)));
    B318(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm18,(r(:,t1,:)-rm18+(kv2.*0.5.*dt))),(r(:,t1,:)-rm18+(kv2.*0.5.*dt))))-((mm18(:,1)).*(sum((r(:,t1,:)-rm18+(kv2.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm18+(kv2.*0.5.*dt)).^2,1)).^(5/2)));
    B319(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm19,(r(:,t1,:)-rm19+(kv2.*0.5.*dt))),(r(:,t1,:)-rm19+(kv2.*0.5.*dt))))-((mm19(:,1)).*(sum((r(:,t1,:)-rm19+(kv2.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm19+(kv2.*0.5.*dt)).^2,1)).^(5/2)));
    B320(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm20,(r(:,t1,:)-rm20+(kv2.*0.5.*dt))),(r(:,t1,:)-rm20+(kv2.*0.5.*dt))))-((mm20(:,1)).*(sum((r(:,t1,:)-rm20+(kv2.*0.5.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm20+(kv2.*0.5.*dt)).^2,1)).^(5/2)));
    B3(:,1,:)=B31+B32+B33+B34+B35+B36+B37+B38+B39+B310+B311+B312+B313+B314+B315+B316+B317+B318+B319+B320;
    ka3(:,1,:)=operador(qm,[(kv3(2,1,:).*B3(3,1,:))-(kv3(3,1,:).*B3(2,1,:));(kv3(3,1,:).*B3(1,1,:))-(kv3(1,1,:).*B3(3,1,:));(kv3(1,1,:).*B3(2,1,:))-(kv3(2,1,:).*B3(1,1,:))]);
    kv4(:,1,:)=kv1+(dt.*ka3);
    B41(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm1,(r(:,t1,:)-rm1+(kv3.*dt))),(r(:,t1,:)-rm1+(kv3.*dt))))-((mm1(:,1)).*(sum((r(:,t1,:)-rm1+(kv3.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm1+(kv3.*dt)).^2,1)).^(5/2)));
    B42(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm2,(r(:,t1,:)-rm2+(kv3.*dt))),(r(:,t1,:)-rm2+(kv3.*dt))))-((mm2(:,1)).*(sum((r(:,t1,:)-rm2+(kv3.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm2+(kv3.*dt)).^2,1)).^(5/2)));
    B43(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm3,(r(:,t1,:)-rm3+(kv3.*dt))),(r(:,t1,:)-rm3+(kv3.*dt))))-((mm3(:,1)).*(sum((r(:,t1,:)-rm3+(kv3.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm3+(kv3.*dt)).^2,1)).^(5/2)));
    B44(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm4,(r(:,t1,:)-rm4+(kv3.*dt))),(r(:,t1,:)-rm4+(kv3.*dt))))-((mm4(:,1)).*(sum((r(:,t1,:)-rm4+(kv3.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm4+(kv3.*dt)).^2,1)).^(5/2)));
    B45(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm5,(r(:,t1,:)-rm5+(kv3.*dt))),(r(:,t1,:)-rm5+(kv3.*dt))))-((mm5(:,1)).*(sum((r(:,t1,:)-rm5+(kv3.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm5+(kv3.*dt)).^2,1)).^(5/2)));
    B46(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm6,(r(:,t1,:)-rm6+(kv3.*dt))),(r(:,t1,:)-rm6+(kv3.*dt))))-((mm6(:,1)).*(sum((r(:,t1,:)-rm6+(kv3.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm6+(kv3.*dt)).^2,1)).^(5/2)));    
    B47(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm7,(r(:,t1,:)-rm7+(kv3.*dt))),(r(:,t1,:)-rm7+(kv3.*dt))))-((mm7(:,1)).*(sum((r(:,t1,:)-rm7+(kv3.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm7+(kv3.*dt)).^2,1)).^(5/2)));
    B48(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm8,(r(:,t1,:)-rm8+(kv3.*dt))),(r(:,t1,:)-rm8+(kv3.*dt))))-((mm8(:,1)).*(sum((r(:,t1,:)-rm8+(kv3.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm8+(kv3.*dt)).^2,1)).^(5/2)));
    B49(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm9,(r(:,t1,:)-rm9+(kv3.*dt))),(r(:,t1,:)-rm9+(kv3.*dt))))-((mm9(:,1)).*(sum((r(:,t1,:)-rm9+(kv3.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm9+(kv3.*dt)).^2,1)).^(5/2)));
    B410(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm10,(r(:,t1,:)-rm10+(kv3.*dt))),(r(:,t1,:)-rm10+(kv3.*dt))))-((mm10(:,1)).*(sum((r(:,t1,:)-rm10+(kv3.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm10+(kv3.*dt)).^2,1)).^(5/2)));
    B411(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm11,(r(:,t1,:)-rm11+(kv3.*dt))),(r(:,t1,:)-rm11+(kv3.*dt))))-((mm11(:,1)).*(sum((r(:,t1,:)-rm11+(kv3.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm11+(kv3.*dt)).^2,1)).^(5/2)));
    B412(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm12,(r(:,t1,:)-rm12+(kv3.*dt))),(r(:,t1,:)-rm12+(kv3.*dt))))-((mm12(:,1)).*(sum((r(:,t1,:)-rm12+(kv3.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm12+(kv3.*dt)).^2,1)).^(5/2)));
    B413(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm13,(r(:,t1,:)-rm13+(kv3.*dt))),(r(:,t1,:)-rm13+(kv3.*dt))))-((mm13(:,1)).*(sum((r(:,t1,:)-rm13+(kv3.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm13+(kv3.*dt)).^2,1)).^(5/2)));    
    B414(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm14,(r(:,t1,:)-rm14+(kv3.*dt))),(r(:,t1,:)-rm14+(kv3.*dt))))-((mm14(:,1)).*(sum((r(:,t1,:)-rm14+(kv3.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm14+(kv3.*dt)).^2,1)).^(5/2)));
    B415(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm15,(r(:,t1,:)-rm15+(kv3.*dt))),(r(:,t1,:)-rm15+(kv3.*dt))))-((mm15(:,1)).*(sum((r(:,t1,:)-rm15+(kv3.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm15+(kv3.*dt)).^2,1)).^(5/2)));
    B416(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm16,(r(:,t1,:)-rm16+(kv3.*dt))),(r(:,t1,:)-rm16+(kv3.*dt))))-((mm16(:,1)).*(sum((r(:,t1,:)-rm16+(kv3.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm16+(kv3.*dt)).^2,1)).^(5/2)));
    B417(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm17,(r(:,t1,:)-rm17+(kv3.*dt))),(r(:,t1,:)-rm17+(kv3.*dt))))-((mm17(:,1)).*(sum((r(:,t1,:)-rm17+(kv3.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm17+(kv3.*dt)).^2,1)).^(5/2)));
    B418(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm18,(r(:,t1,:)-rm18+(kv3.*dt))),(r(:,t1,:)-rm18+(kv3.*dt))))-((mm18(:,1)).*(sum((r(:,t1,:)-rm18+(kv3.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm18+(kv3.*dt)).^2,1)).^(5/2)));
    B419(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm19,(r(:,t1,:)-rm19+(kv3.*dt))),(r(:,t1,:)-rm19+(kv3.*dt))))-((mm19(:,1)).*(sum((r(:,t1,:)-rm19+(kv3.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm19+(kv3.*dt)).^2,1)).^(5/2)));
    B420(:,1,:)=operador1(((muo/(4*pi)).*((operador(3.*dotn(mm20,(r(:,t1,:)-rm20+(kv3.*dt))),(r(:,t1,:)-rm20+(kv3.*dt))))-((mm20(:,1)).*(sum((r(:,t1,:)-rm20+(kv3.*dt)).^2,1))))),1./((sum((r(:,t1,:)-rm20+(kv3.*dt)).^2,1)).^(5/2)));
    B4(:,1,:)=B41+B42+B43+B44+B45+B46+B47+B48+B49+B410+B411+B412+B413+B414+B415+B416+B417+B418+B419+B420;
    ka4(:,1,:)=operador(qm,([(kv4(2,1,:).*B4(3,1,:))-(kv4(3,1,:).*B4(2,1,:));(kv4(3,1,:).*B4(1,1,:))-(kv4(1,1,:).*B4(3,1,:));(kv4(1,1,:).*B4(2,1,:))-(kv4(2,1,:).*B4(1,1,:))]));
    r(:,t1+1,:)=r(:,t1,:)+((dt/6).*(kv1+(2.*kv2)+(2.*kv3)+kv4));
    v(:,t1+1,:)=v(:,t1,:)+((dt/6).*(ka1+(2.*ka2)+(2.*ka3)+ka4));
    a(:,t1,:)=ka1;
end



end