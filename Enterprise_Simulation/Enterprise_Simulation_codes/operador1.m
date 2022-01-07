function[t]=operador1(b,a)
%opera de igual manera que la funcion operador, pero cambiando el orden de
%entrada
at(:,1,1)=a;
h=diag(at);
ht(:,:)=b(:,1,:);
t(:,1,:)=ht*h;