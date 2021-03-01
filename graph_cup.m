tiledlayout(1,3);

nexttile;
hold on
y_1 = 0:0.1:2;
x_1 = y_1.*0;
plot(x_1,y_1);


x_2 = 0:0.1:1;
y_2 = x_2.*0+2;
plot(x_2, y_2);


y_3 = 2:0.1:5;
x_3 = y_3.*0+1;
plot(x_3,y_3);

x_4 = 1:0.1:9;
y_4 = -x_4/2.5+5.4;
plot(x_4,y_4)

x_alt = 2:0.1:9;
y_alt = -0.012.*x_alt.^2 + 0.39.*x_alt - 0.7;
plot(x_alt,y_alt)
title("Grafica por Secciones");
xlabel("X");
ylabel("Y");


nexttile;
xand = [x_1 x_2 x_3 x_4];
yand = [y_1 y_2 y_3 y_4];
plot(xand, yand)
hold on;
title("Grafica Completa");
xlabel("X");
ylabel("Y");

nexttile;
y = [0 y_2 y_4];
y_alt2 = [0 y_alt];

cylinder(y)
hold on;
cylinder(y_alt2)
title("Modelo 3D del Vaso");
xlabel("X");
ylabel("Y");
zlabel("Z");

