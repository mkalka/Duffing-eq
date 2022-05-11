%clear;
%close all;

tic
set(0,'defaulttextinterpreter','latex');
set(0,'DefaultLineLineWidth', 1.25); 
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0,'defaultAxesFontSize',30);
set(0,'defaultAxesFontName', 'TeX Gyre Schola Math');
set(0,'defaulttextinterpreter','latex');
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0,'defaultAxesFontName', 'TeX Gyre Schola Math');
set(groot, 'defaultFigureUnits', 'centimeters', 'defaultFigurePosition', [0 0 25 25]);

rng(0, 'twister');

dt = 0.01; %krok czasowy
N = 10000;

time = [0:dt:dt*N]; %siatka czasowa

m = 1;
Gamma = 1;
A = 0.1;
xc = 1;
lambda = (A*xc*xc)./(Gamma*Gamma*m);

x0 = 0.1;
p0 = -2;

c = 0.5*p0*p0 - 0.5*x0*x0 + 0.25*lambda*x0*x0*x0*x0;
k = -1/(2*c*lambda)-(1/(2*c*lambda))*sqrt(1+4*c*lambda) - 1;
B = sqrt((sqrt(1+4*c*lambda)-1)/2);
%modified_time = time.*B;
%arg = x0*sqrt(lambda)/(sqrt(1+sqrt(1+4*lambda*c)));
%phi = asin(arg);
%F = ellipticF(phi, k);

%x_0 = sqrt((1/lambda)*(1+sqrt(1+4*lambda*c)))*jacobiSN(modified_time + F, k);
%p_0 = m*sqrt(2*c)*jacobiCN(modified_time + F, k).*jacobiDN(modified_time + F, k);
%e_0 = p_0.^2/(2*m) - 0.5*x_0.^2 + 0.25*lambda*x_0.^4;

Theta = 4*ellipticK(k)/B;
%Theta = (2*1i/B)*ellipticCK(k);
omega = 0.7350-0.25;%1.4750;%0;%0.487671048; %(2*pi)/Theta; %0.987671048;%0.487671048;%(2*pi)/Theta;

%sigmax= 1/10; 
%sigmap=sigmax;

%mu = [x0 p0];
%sigma = [sigmap 0; 0 sigmax];
%rng('default')  % For reproducibility
%R = mvnrnd(mu,sigma,n);

%sigma_e = sqrt((1/(4))*(4*(p0^2)*sigmap^2 + 2*sigmap^4));
%expected_energy = (p0^2 + sigmap^2)/2;

%x0tab=R(:,1); %n polozen poczatkowych z rozkladu gaussa
%p0tab=R(:,2); %n pedow poczatkowych z rozkladu gaussa
%base_energy = (p0tab.^2)./2;

%OX = [-20:1:20]; %
%if n > 1
%[x, p] = rk4_zab_4(x0tab, p0tab, n, N, dt, lambda, omega);
%else

f = 0.35;%[0.01:0.05:1.06];

for i = 1:length(f)
[x(:,i), p(:,i)] = rk4_zab_4(x0, p0, 1, N, dt, lambda, omega,f(i));    
end
%e = p.^2/(2*m) - 0.5*x.^2 + 0.25*lambda*x.^4;


%% PLOTTING PHASE-SPACE
%{
figure
%plot(x_0, p_0, '-k', 'LineWidth', 2)
%hold on

hold on
for i = 1:n
plot(x(i,1:3001), p(i,1:3001), '-k', 'LineWidth', 2)
hold on
end
hold on
%plot(mean(x), mean(p), '-k', 'LineWidth', 2.5)
%hold on
%if n>1
%plot(x0tab, p0tab,'.b')
%else
plot(x0, p0, 'or', 'MarkerFaceColor', 'r')    
%end
box on
grid on
axis('square')
xlabel('$X$ [arb. unit]') % x-axis label
ylabel('$P$ [arb. unit]') % y-axis label
%}
%% Plotting diferences
%{
dif_x = abs(real(x_0) - x);
dif_p = abs(real(p_0) - p);
dif_e = abs(real(e_0) - e);

figure
subplot(3,1,1);
stem(dif_x(1:N), 'Marker', 'none', 'LineWidth', 1.5)
legend({'Blad bezwzgledny X(t)'}, 'Location', 'North', 'Interpreter', 'latex')
xlabel('numer iteracji') % x-axis label
ylabel('Blad X(t)') % y-axis label

subplot(3,1,2); 
stem(dif_p(1:N), 'Marker', 'none', 'LineWidth', 1.5)
legend({'Blad bezwzgledny P(t)'}, 'Location', 'North', 'Interpreter', 'latex')
xlabel('numer iteracji') % x-axis label
ylabel('Blad P(t)') % y-axis label

subplot(3,1,3);
stem(dif_e(1:N), 'Marker', 'none', 'LineWidth', 1.5)
legend({'Blad bezwzgledny E(t)'}, 'Location', 'North', 'Interpreter', 'latex')
xlabel('numer iteracji') % x-axis label
ylabel('Blad E(t)') % y-axis label
%}

%% PLOTTING ENERGY LEVELS
%{
figure
for i = 1:n
plot(time, energy(i, :), '.r')
hold on
end
plot(time, mean(energy), '-k')

box on
axis('square')
xlabel('t [a.u.]') % x-axis label
ylabel('$E_t$ [a.u.]') % y-axis label  
%}

%{
figure
for i = 1:n
plot(time, u(i, :), '.r')
hold on
end

box on
axis('square')
xlabel('t [a.u.]') % x-axis label
ylabel('E_p [a.u.]') % y-axis label  
%}

%{
figure
for i = 1:n
plot(time, base_energy(i)*ones(length(time)), '.r')
hold on
end
plot(time, expected_energy*ones(length(time)), '.b')
hold on
plot(time, (expected_energy+sigma_e)*ones(length(time)), '.g')
hold on
plot(time, (expected_energy-sigma_e)*ones(length(time)), '.g')

box on
axis('square')
xlabel('t [a.u.]') % x-axis label
ylabel('$E_0k$ [a.u.]') % y-axis label  
%}

%% PLOTTING trajectories
%{
figure
hold on
for i = 1:n
plot(time(1:3001), x(i, 1:3001), '-g', time(1:3001), p(i,1:3001), '-r')
hold on
end

box on
axis('square')
xlabel('$\tau$ [arb. unit]') % x-axis label
ylabel('$X, P$ [arb. unit]') % y-axis label 
legend('$~X=X(\tau)$', '$~P=P(\tau)$', 'Interpreter', 'latex', 'Location', 'Southeast')
%}

%% PLOTTING MOMENTUM
%{
figure
for i = 1:n
plot(time, p(i, :), '-r')
hold on
end

box on
axis('square')
xlabel('t [a.u.]') % x-axis label
ylabel('p [a.u.]') % y-axis label  
%}
%{
ave_x = mean(x);
ave_p = mean(p);

w0 = cat(2, x0tab, p0tab);

%t=5
x1tab = x(:, 100);
p1tab = p(:, 100);
w1 = cat(2, x1tab, p1tab); %informacje o wszystkich cz¹stkach w chwili t=5

%t=10
x2tab = x(:, 200);
p2tab = p(:, 200);
w2 = cat(2, x2tab, p2tab); %informacje o wszystkich cz¹stkach w chwili t=10

%t=15 
x3tab = x(:, 300);
p3tab = p(:, 300);
w3 = cat(2, x3tab, p3tab); %informacje o wszystkich cz¹stkach w chwili t=15

%t=15 
x4tab = x(:, 400);
p4tab = p(:, 400);
w4 = cat(2, x4tab, p4tab); %informacje o wszystkich cz¹stkach w chwili t=15

%t=15 
x5tab = x(:, 500);
p5tab = p(:, 500);
w5 = cat(2, x5tab, p5tab); %informacje o wszystkich cz¹stkach w chwili t=15

k = boundary(x0tab, p0tab, 0.01);
l = boundary(x1tab, p1tab, 0.01);
j = boundary(x2tab, p2tab, 0.01);
m = boundary(x3tab, p3tab, 0.01);
b = boundary(x4tab, p4tab, 0.01);
bb = boundary(x5tab, p5tab, 0.01);

e=0.001; %dokladnosc dzialania algorytmu MinVolEllipse

ww0 = transpose(w0);
ww1 = transpose(w1);
ww2 = transpose(w2);
ww3 = transpose(w3);
ww4 = transpose(w4);
ww5 = transpose(w5);

[A0, c0] = MinVolEllipse(ww0, e);
[A1, c1] = MinVolEllipse(ww1, e);
[A2, c2] = MinVolEllipse(ww2, e);
[A3, c3] = MinVolEllipse(ww3, e);
[A4, c4] = MinVolEllipse(ww4, e);
[A5, c5] = MinVolEllipse(ww5, e);

%{
figure
plot(ave_x, ave_p, '-k', 'LineWidth', 2)
hold on
Ellipse_plot(A0, c0)
hold on
plot(x0tab, p0tab, '.r')
    box on
    ax = gca
    ax.LineWidth = 1.25
axis([-5 5 -5 5], 'square')
xlabel('x [a.u.]', 'interpreter', 'latex','fontsize', 20, 'FontName', 'TeX Gyre Schola Math') % x-axis label
ylabel('p [a.u.]', 'interpreter', 'latex','fontsize', 20, 'FontName', 'TeX Gyre Schola Math') % y-axis label
title('t = 0 [a.u.]', 'interpreter', 'latex','fontsize', 20)
set(gca,'TickLabelInterpreter', 'latex');
set(gca,'fontsize', 20);

figure
plot(ave_x, ave_p, '-k', 'LineWidth', 2)
hold on
Ellipse_plot(A1, c1)
hold on
plot(x1tab, p1tab, '.r')
    box on
    ax = gca
    ax.LineWidth = 1.25
axis([-5 5 -5 5], 'square')
set(gca,'fontsize', 16);
xlabel('x [a.u.]', 'interpreter', 'latex','fontsize', 20, 'FontName', 'TeX Gyre Schola Math') % x-axis label
ylabel('p [a.u.]', 'interpreter', 'latex','fontsize', 20, 'FontName', 'TeX Gyre Schola Math') % y-axis label
title('t = 1 [a.u.]', 'interpreter', 'latex','fontsize', 20)
set(gca,'TickLabelInterpreter', 'latex');


figure
plot(ave_x, ave_p, '-k', 'LineWidth', 2)
hold on
Ellipse_plot(A2, c2)
hold on
plot(x2tab, p2tab, '.r')
        box on
    ax = gca
    ax.LineWidth = 1.25
axis([-5 5 -5 5], 'square')
xlabel('x [a.u.]', 'interpreter', 'latex','fontsize', 20, 'FontName', 'TeX Gyre Schola Math') % x-axis label
ylabel('p [a.u.]', 'interpreter', 'latex','fontsize', 20, 'FontName', 'TeX Gyre Schola Math') % y-axis label
title('t = 2 [a.u.]', 'interpreter', 'latex','fontsize', 20)
set(gca,'TickLabelInterpreter', 'latex');
set(gca,'fontsize', 20);

figure
plot(ave_x, ave_p, '-k', 'LineWidth', 2)
hold on
Ellipse_plot(A3, c3)
hold on
plot(x3tab, p3tab, '.r')
    box on
    ax = gca
    ax.LineWidth = 1.25
axis([-5 5 -5 5], 'square')
xlabel('x [a.u.]', 'interpreter', 'latex','fontsize', 20, 'FontName', 'TeX Gyre Schola Math') % x-axis label
ylabel('p [a.u.]', 'interpreter', 'latex','fontsize', 20, 'FontName', 'TeX Gyre Schola Math') % y-axis label
title('t = 3 [a.u.]', 'interpreter', 'latex','fontsize', 20)
set(gca,'TickLabelInterpreter', 'latex');
set(gca,'fontsize', 20);

figure
plot(ave_x, ave_p, '-k', 'LineWidth', 2)
hold on
Ellipse_plot(A4, c4)
hold on
plot(x4tab, p4tab, '.r')
    box on
    ax = gca
    ax.LineWidth = 1.25
axis([-5 5 -5 5], 'square')
xlabel('x [a.u.]', 'interpreter', 'latex','fontsize', 20, 'FontName', 'TeX Gyre Schola Math') % x-axis label
ylabel('p [a.u.]', 'interpreter', 'latex','fontsize', 20, 'FontName', 'TeX Gyre Schola Math') % y-axis label
title('t = 4 [a.u.]', 'interpreter', 'latex','fontsize', 20)
set(gca,'TickLabelInterpreter', 'latex');
set(gca,'fontsize', 20);

figure
plot(ave_x, ave_p, '-k', 'LineWidth', 2)
hold on
Ellipse_plot(A5, c5)
hold on
plot(x5tab, p5tab, '.r')
    box on
    ax = gca
    ax.LineWidth = 1.25
axis([-5 5 -5 5], 'square')
xlabel('x [a.u.]', 'interpreter', 'latex','fontsize', 20, 'FontName', 'TeX Gyre Schola Math') % x-axis label
ylabel('p [a.u.]', 'interpreter', 'latex','fontsize', 20, 'FontName', 'TeX Gyre Schola Math') % y-axis label
title('t = 5 [a.u.]', 'interpreter', 'latex','fontsize', 20)
set(gca,'TickLabelInterpreter', 'latex');
set(gca,'fontsize', 20);
%}
area0 = det(A0);
area1 = det(A1);
area2 = det(A2);
area3 = det(A3);
area4 = det(A4);
area5 = det(A5);
%}
toc