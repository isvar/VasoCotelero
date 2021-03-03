clear all;
close all;
clc;

tiledlayout(1,3);

% Graph by sections
nexttile;
hold on
% Cup graphs
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


% Interior cup Graphs
% Where the liquid will be held
y_alt = 0:0.1:4.7;
x_alt = y_alt.*0+1.2;

x_alt_2 = 1.2:0.1:9;
y_alt_2 = x_alt_2.*-.3718+5.1462;

plot(x_alt,y_alt);
plot(x_alt_2, y_alt_2);
title("Grafica por Secciones");
xlabel("X");
ylabel("Y");


% Unite All Exterior sections into one Graph
nexttile;
xand = [x_1 x_2 x_3 x_4];
yand = [y_1 y_2 y_3 y_4];
plot(xand, yand)
hold on;
title("Grafica Completa");
xlabel("X");
ylabel("Y");

% Solid Revolution
% The interior revolution as been remove
nexttile;
y = [0 y_2 y_4];
y_alt2 = [1.8 y_alt_2];

cylinder(y)
hold on;
% cylinder(y_alt_2)
title("Modelo 3D del Vaso");
xlabel("X");
ylabel("Y");
zlabel("Z");

%%
% volumen
% Obtain volume of the content
fyx_1 = @(x) (x.*0+2).^2;
fyx_2 = @(x) (-x/2.5+5.4).^2;

vol_1 = pi*integral(fyx_1,0,1);
vol_2 = pi*integral(fyx_2,1,9);
vol = vol_1 + vol_2;

fyx_int = @(x) (x.*-.3718+5.146).^2;

vol_int = pi*integral(fyx_int,1.2,9);


disp("Volumen Vaso");
disp(vol-vol_int);
disp("Volumen Liquido");
disp(vol_int)
