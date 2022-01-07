function[t]=operador(a,b)
%-a es un vector fila n
%-b es una matriz 3x1xn
%-t es una matriz 3x1xn cuyas columnas son el resultado de multiplicar el elemento j
%del vector a con todos  los elementos de la columna j de la matriz a
at(:,1,1)=a;
h=diag(at);
ht(:,:)=b(:,1,:);
t(:,1,:)=ht*h;