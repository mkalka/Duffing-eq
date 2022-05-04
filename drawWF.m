function wykres=drawWF(w, t, WF)
set(0,'defaulttextinterpreter','latex');
set(0,'DefaultLineLineWidth', 1.25); 
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0,'defaultAxesFontSize',30);
set(0,'defaultAxesFontName', 'TeX Gyre Schola Math');
set(0,'defaulttextinterpreter','latex');
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0,'defaultAxesFontName', 'TeX Gyre Schola Math');
%set(groot, 'defaultFigureUnits', 'centimeters', 'defaultFigurePosition', [5 5 35 35]);
w0 = max(max(WF));
wmin = min(min(WF));

wykres = figure(2);
%meshc(w,t,WF);
%surf(w,t,WF','edgecolor', 'none'); hold on
%shading flat
[~,h] = contourf(w,t,WF', 'EdgeColor','none');
%h.ContourZLevel = wmin; % so offset the contour plot
xlabel('$\omega$ [arb. unit]')
ylabel('$\tau$ [arb. unit]')
%zlabel('$W_{X,X}(\tau, \omega)$ [arb. unit]')
%yticks([0,5,10,15,20,25,30])
set(gca,'GridLineStyle','--');
grid on
box on
c = colorbar;
axis square;
c.TickLabelInterpreter = 'latex';
colormap(redblue);
caxis([-w0 w0]);
%view([-40,13])

%h = rotate3d;
%set(h, 'ActionPreCallback', 'set(gcf,''windowbuttonmotionfcn'',@align_axislabel)')
%set(h, 'ActionPostCallback', 'set(gcf,''windowbuttonmotionfcn'','''')')
%set(gcf, 'ResizeFcn', @align_axislabel)
%align_axislabel([], gca)
%axislabel_translation_slider;

%close(wykres)
end