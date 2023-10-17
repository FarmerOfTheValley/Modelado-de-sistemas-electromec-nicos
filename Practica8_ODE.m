%ode45 resuslve numericamente el sistema
[t,x]=ode45(@RLM, [0 10], [0 0 0])

%Graficamos velocidad angular
figure()
plot(t,x(:,3), 'b'); %Tomamos la columna de la velocidad angular 
grid on
title("Velocidad Angular motor");
xlabel("Tiempo");
ylabel("Radianes");