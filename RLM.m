function dx=RLM(t,x)

%paramegtros
R=2; %Resistencia
Kt=0.01; %Constante del torque
b=0.0012; %Amortiguador
Lu=0.023; %Inductancia
Ke=0.01; %Constante del voltaje
J=0.001; %Inercia
Vin=5; %Voltaje inicial

dx=zeros(3,1);

dx(1)=(1/Lu)*(-Ke*x(3)-R*x(1)+Vin);
dx(2)=x(3);
dx(3)=(1/J)*(Kt*x(1)-b*x(3));