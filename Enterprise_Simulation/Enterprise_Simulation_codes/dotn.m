function[t]=dotn(a,b)
%definicion del producto escalar para matrices de vectores
t=(a(1,1,:).*b(1,1,:))+(a(2,1,:).*b(2,1,:))+(a(3,1,:).*b(3,1,:));
end