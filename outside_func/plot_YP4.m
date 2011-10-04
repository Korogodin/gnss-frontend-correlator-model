function ress = plot_YP4(h_fig_main)
%PLOT_YP4 Функция отрисовки axes_YP4

globals;

plot(h_fig_main.axes_YP4, Fd*(1:L)/L, 20*log10(abs(fft(y_YP4))), '-b')
set(h_fig_main.axes_YP4, 'XTick', []);
set(h_fig_main.axes_YP4, 'YTick', []);
set(h_fig_main.axes_YP4, 'XLim', [0 2*f0]);
ress = 1;

end
