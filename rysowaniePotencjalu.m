clc;
clear;

set(0,'defaulttextinterpreter','latex');
set(0,'DefaultLineLineWidth', 1.25); 
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0,'defaultAxesFontSize',30);
set(0,'defaultAxesFontName', 'TeX Gyre Schola Math');
set(0,'defaulttextinterpreter','latex');
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0,'defaultAxesFontName', 'TeX Gyre Schola Math');
%set(groot, 'defaultFigureUnits', 'centimeters', 'defaultFigurePosition', [0 0 25 25]);

X = [-5.5:0.01:5.5];
P = [-5:0.01:5]';

N = 200;
dt = 0.1;
time = [0:dt:dt*N]; %siatka czasowa
x_h = sqrt(2/0.1)*sech(time);
p_h = sqrt(2/0.1)*sech(time).*tanh(time);
H_0 = zeros(201,201);
H = P.^2/2 - X.^2/2 + (0.1*X.^4)/4;
hmin = min(min(H));
hmax = max(max(H));

figure
%meshc(w,t,WF);
surf(X,P,H,'edgecolor', 'none'); hold on
plot3(x_h,p_h, H_0,'-k', 'LineWidth', 2);
hold on
plot3(-x_h,-p_h, H_0,'-k', 'LineWidth', 2);
hold on
plot3(x_h,-p_h, H_0,'-k', 'LineWidth', 2);
hold on
plot3(-x_h,p_h, H_0,'-k', 'LineWidth', 2);
shading flat
[~,h] = contour(X,P,H);
h.ContourZLevel = hmin-5; % so offset the contour plot
hold on
k = plot3(x_h, p_h,(hmin-4.96)*ones(201,201), '-k', 'LineWidth', 2);
mArrow3([1 1 hmin-5], [1.2 1.2 hmin-4.96]);
hold on
k = plot3(-x_h, -p_h,(hmin-4.96)*ones(201,201), '-k', 'LineWidth', 2);
mArrow3([-1 -1 hmin-5], [-1.2 -1.2 hmin-4.96]);
hold on
k = plot3(x_h, -p_h,(hmin-4.96)*ones(201,201), '-k', 'LineWidth', 2);
mArrow3([-0.8 0.8 hmin-5], [-0.6 0.6 hmin-4.96]);
hold on
k = plot3(-x_h, p_h,(hmin-4.96)*ones(201,201), '-k', 'LineWidth', 2);
mArrow3([1.2 -1.2 hmin-5], [1 -1 hmin-4.96]);
hold on
plot3(0*ones(201,201), 0*ones(201,201), (hmin-4.9)*ones(201,201), 'or', 'MarkerFaceColor', 'r');
hold on
plot3((1/sqrt(0.1))*ones(201,201), 0*ones(201,201), (hmin-4.9)*ones(201,201), 'or', 'MarkerFaceColor', 'r');
hold on
plot3((-1/sqrt(0.1))*ones(201,201), 0*ones(201,201), (hmin-4.9)*ones(201,201), 'or', 'MarkerFaceColor', 'r');

srodek_1 = 1/sqrt(0.1);
srodek_2 = -srodek_1;
srodek_3 = 0;

text(srodek_1-0.3, srodek_3-0.2, hmin-4.96, '$Q_+$', 'Interpreter', 'latex', 'FontSize', 16);
text(srodek_2-0.35, srodek_3-0.2, hmin-4.96, '$Q_-$', 'Interpreter', 'latex', 'FontSize', 16);
text(srodek_3+0.25, srodek_3-0.2, hmin-4.96, '$Q_0$', 'Interpreter', 'latex', 'FontSize', 16);

%set(gca, 'dataaspectratio', [1 1 1], 'projection', 'perspective', 'box', 'on')

xlabel('X [arb. unit]')
ylabel('P [arb. unit]')
zlabel('E [arb. unit]')
zlim([hmin-5 20])

%h = rotate3d;
%set(h, 'ActionPreCallback', 'set(gcf,''windowbuttonmotionfcn'',@align_axislabel)')
%set(h, 'ActionPostCallback', 'set(gcf,''windowbuttonmotionfcn'','''')')
%set(gcf, 'ResizeFcn', @align_axislabel)
align_axislabel([], gca)
%axislabel_translation_slider;

zlabel('E [arb. unit]')

view(-28, 35);
set(gcf, 'Color', 'w');
colormap(redblue);