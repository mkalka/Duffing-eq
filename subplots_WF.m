%% Subplots
set(0,'defaulttextinterpreter','latex');
set(0,'DefaultLineLineWidth', 1.25); 
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0,'defaultAxesFontSize',30);
set(0,'defaultAxesFontName', 'TeX Gyre Schola Math');
set(0,'defaulttextinterpreter','latex');
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0,'defaultAxesFontName', 'TeX Gyre Schola Math');
set(0,'defaultAxesFontSize',20);

figure(7)
%w0 = max([max(xx_above_0), max(xx_above_plus), max(xx_above_minus), max(pp_above_0), max(pp_above_plus), max(pp_above_minus)]);
% 
xx(1) = subplot(3,2,1)
contourf(w,t,xx_above_0, 'EdgeColor','none');
%hold on
%xline(mean([-2.97000000000000;-2.96000000000000;-2.95000000000000;-2.94000000000000]));
hold on
xline(mean([-2.23000000000002;-2.22000000000002;-2.21000000000002;-2.20000000000002]));
hold on
xline(mean([-1.49000000000003;-1.48000000000003;-1.47000000000003;-1.46000000000003]));
hold on
xline(mean([-0.750000000000048;-0.740000000000048;-0.730000000000048;-0.720000000000049]));
hold on
xline(mean([-0.0100000000000637;-6.39488462184090e-14;0.00999999999993584;0.0199999999999356]));
hold on
xline(mean([0.719999999999921;0.729999999999921;0.739999999999920;0.749999999999920]));
hold on
xline(mean([1.45999999999991;1.46999999999990;1.47999999999990;1.48999999999990]));
hold on
xline(mean([2.19999999999989;2.20999999999989;2.21999999999989;2.22999999999989]));
%hold on
%xline(mean([2.93999999999987;2.94999999999987;2.95999999999987;2.96999999999987]));

axis square
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(a)', 'FontSize', 20)

w0 = max(max(xx_above_0));
c = colorbar;
axis square;
c.TickLabelInterpreter = 'latex';
colormap(redblue);
caxis([-w0 w0]);
% 
pp(1) = subplot(3,2,2)
contourf(w,t,pp_above_0, 'EdgeColor','none');
%hold on
%xline(mean([-2.97000000000000;-2.96000000000000;-2.95000000000000;-2.94000000000000]));
hold on
xline(mean([-2.23000000000002;-2.22000000000002;-2.21000000000002;-2.20000000000002]));
hold on
xline(mean([-1.49000000000003;-1.48000000000003;-1.47000000000003;-1.46000000000003]));
hold on
xline(mean([-0.750000000000048;-0.740000000000048;-0.730000000000048;-0.720000000000049]));
hold on
xline(mean([-0.0100000000000637;-6.39488462184090e-14;0.00999999999993584;0.0199999999999356]));
hold on
xline(mean([0.719999999999921;0.729999999999921;0.739999999999920;0.749999999999920]));
hold on
xline(mean([1.45999999999991;1.46999999999990;1.47999999999990;1.48999999999990]));
hold on
xline(mean([2.19999999999989;2.20999999999989;2.21999999999989;2.22999999999989]));
%hold on
%xline(mean([2.93999999999987;2.94999999999987;2.95999999999987;2.96999999999987]));

axis square

NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(b)', 'FontSize', 20)

w0 = max(max(pp_above_0));
c = colorbar;
axis square;
c.TickLabelInterpreter = 'latex';
colormap(redblue);
caxis([-w0 w0]);
% 
xx(2) = subplot(3,2,3)
contourf(w,t,xx_above_plus, 'EdgeColor','none');
%hold on
%xline(mean([-2.97000000000000;-2.96000000000000;-2.95000000000000;-2.94000000000000]));
hold on
xline(mean([-2.23000000000002;-2.22000000000002;-2.21000000000002;-2.20000000000002]));
hold on
xline(mean([-1.49000000000003;-1.48000000000003;-1.47000000000003;-1.46000000000003]));
hold on
xline(mean([-0.750000000000048;-0.740000000000048;-0.730000000000048;-0.720000000000049]));
hold on
xline(mean([-0.0100000000000637;-6.39488462184090e-14;0.00999999999993584;0.0199999999999356]));
hold on
xline(mean([0.719999999999921;0.729999999999921;0.739999999999920;0.749999999999920]));
hold on
xline(mean([1.45999999999991;1.46999999999990;1.47999999999990;1.48999999999990]));
hold on
xline(mean([2.19999999999989;2.20999999999989;2.21999999999989;2.22999999999989]));

axis square
ylabel('$\tau$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)

NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(c)', 'FontSize', 20)

w0 = max(max(xx_above_plus));
c = colorbar;
axis square;
c.TickLabelInterpreter = 'latex';
colormap(redblue);
caxis([-w0 w0]);
% 
pp(2) = subplot(3,2,4)
contourf(w,t,pp_above_plus, 'EdgeColor','none');
%hold on
%xline(mean([-2.97000000000000;-2.96000000000000;-2.95000000000000;-2.94000000000000]));
hold on
xline(mean([-2.23000000000002;-2.22000000000002;-2.21000000000002;-2.20000000000002]));
hold on
xline(mean([-1.49000000000003;-1.48000000000003;-1.47000000000003;-1.46000000000003]));
hold on
xline(mean([-0.750000000000048;-0.740000000000048;-0.730000000000048;-0.720000000000049]));
hold on
xline(mean([-0.0100000000000637;-6.39488462184090e-14;0.00999999999993584;0.0199999999999356]));
hold on
xline(mean([0.719999999999921;0.729999999999921;0.739999999999920;0.749999999999920]));
hold on
xline(mean([1.45999999999991;1.46999999999990;1.47999999999990;1.48999999999990]));
hold on
xline(mean([2.19999999999989;2.20999999999989;2.21999999999989;2.22999999999989]));
%hold on
%xline(mean([2.93999999999987;2.94999999999987;2.95999999999987;2.96999999999987]));

axis square
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(d)', 'FontSize', 20)

w0 = max(max(pp_above_plus));
c = colorbar;
axis square;
c.TickLabelInterpreter = 'latex';
colormap(redblue);
caxis([-w0 w0]);
% 
xx(3) = subplot(3,2,5)

contourf(w,t,xx_above_minus, 'EdgeColor','none');
%hold on
%xline(mean([-2.97000000000000;-2.96000000000000;-2.95000000000000;-2.94000000000000]));
hold on
xline(mean([-2.23000000000002;-2.22000000000002;-2.21000000000002;-2.20000000000002]));
hold on
xline(mean([-1.49000000000003;-1.48000000000003;-1.47000000000003;-1.46000000000003]));
hold on
xline(mean([-0.750000000000048;-0.740000000000048;-0.730000000000048;-0.720000000000049]));
hold on
xline(mean([-0.0100000000000637;-6.39488462184090e-14;0.00999999999993584;0.0199999999999356]));
hold on
xline(mean([0.719999999999921;0.729999999999921;0.739999999999920;0.749999999999920]));
hold on
xline(mean([1.45999999999991;1.46999999999990;1.47999999999990;1.48999999999990]));
hold on
xline(mean([2.19999999999989;2.20999999999989;2.21999999999989;2.22999999999989]));

axis square
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(e)', 'FontSize', 20)

w0 = max(max(xx_above_minus));
c = colorbar;
axis square;
c.TickLabelInterpreter = 'latex';
colormap(redblue);
caxis([-w0 w0]);
% 
pp(3) = subplot(3,2,6)
contourf(w,t,pp_above_minus, 'EdgeColor','none');
%hold on
%xline(mean([-2.97000000000000;-2.96000000000000;-2.95000000000000;-2.94000000000000]));
hold on
xline(mean([-2.23000000000002;-2.22000000000002;-2.21000000000002;-2.20000000000002]));
hold on
xline(mean([-1.49000000000003;-1.48000000000003;-1.47000000000003;-1.46000000000003]));
hold on
xline(mean([-0.750000000000048;-0.740000000000048;-0.730000000000048;-0.720000000000049]));
hold on
xline(mean([-0.0100000000000637;-6.39488462184090e-14;0.00999999999993584;0.0199999999999356]));
hold on
xline(mean([0.719999999999921;0.729999999999921;0.739999999999920;0.749999999999920]));
hold on
xline(mean([1.45999999999991;1.46999999999990;1.47999999999990;1.48999999999990]));
hold on
xline(mean([2.19999999999989;2.20999999999989;2.21999999999989;2.22999999999989]));
%hold on
%xline(mean([2.93999999999987;2.94999999999987;2.95999999999987;2.96999999999987]));

axis square

xlabel('$\omega$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)

NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(f)', 'FontSize', 20)

w0 = max(max(pp_above_minus));
c = colorbar;
axis square;
c.TickLabelInterpreter = 'latex';
colormap(redblue);
caxis([-w0 w0]);