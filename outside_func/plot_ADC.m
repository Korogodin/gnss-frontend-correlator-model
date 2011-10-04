function ress = plot_ADC(h_fig_main)
%PLOT_ADC Функция отрисовки axes_ADC

globals;

plot(h_fig_main.axes_ADC, t, y, '-b')
set(h_fig_main.axes_ADC, 'XTick', []);
set(h_fig_main.axes_ADC, 'YTick', []);
set(h_fig_main.axes_ADC, 'XLim', [0 Tc/204]);
ress = 1;

end
