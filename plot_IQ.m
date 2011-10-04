function ress = plot_IQ(h_fig_main)
%PLOT_ADC Функция отрисовки axes_ADC

globals;

absEpsTau = abs(EpsTau);
ro = (absEpsTau < 1) - absEpsTau.*(absEpsTau < 1);
if (AD_MODE == 2) && (noise_onoff)
    ro = ro / STD_Noise / 1.2;
end
ro = ro * 8; % Т.к. sinop, cosop с амплитудой 8

switch IQplot
 case 1
    plot(h_fig_main.axes_I, EpsTau, Ip, EpsTau, ro*L/2*cos(d_phase));
    plot(h_fig_main.axes_Q, EpsTau, Qp, EpsTau, ro*L/2*sin(-d_phase));
    dY = 0.1*max([abs(max(Ip)) abs(min(Ip))]);
    ylim(h_fig_main.axes_I, [min(Ip)-dY max(Ip)+dY]);
    dY = 0.1*max([abs(max(Qp)) abs(min(Qp))]);    
    ylim(h_fig_main.axes_Q, [min(Qp)-dY max(Qp)+dY]);
 case 2
    plot(h_fig_main.axes_I, EpsTau, Ie, EpsTau, circshift(ro, [0 +50])*L/2*cos(d_phase));
    plot(h_fig_main.axes_Q, EpsTau, Qe, EpsTau, circshift(ro, [0 +50])*L/2*sin(-d_phase));    
    dY = 0.1*max([abs(max(Ie)) abs(min(Ie))]);
    ylim(h_fig_main.axes_I, [min(Ie)-dY max(Ie)+dY]);
    dY = 0.1*max([abs(max(Qe)) abs(min(Qe))]);    
    ylim(h_fig_main.axes_Q, [min(Qe)-dY max(Qe)+dY]);
 case 3
    plot(h_fig_main.axes_I, EpsTau, Il, EpsTau, circshift(ro, [0 -50])*L/2*cos(d_phase));
    plot(h_fig_main.axes_Q, EpsTau, Ql, EpsTau, circshift(ro, [0 -50])*L/2*sin(-d_phase));
    dY = 0.1*max([abs(max(Il)) abs(min(Il))]);
    ylim(h_fig_main.axes_I, [min(Il)-dY max(Il)+dY]);
    dY = 0.1*max([abs(max(Ql)) abs(min(Ql))]);    
    ylim(h_fig_main.axes_Q, [min(Ql)-dY max(Ql)+dY]);
end
    grid(h_fig_main.axes_I, 'on');
    grid(h_fig_main.axes_Q, 'on');

h = legend(h_fig_main.axes_I, 'Эксп','СЭ',1);
set(h, 'Box', 'off')
h = legend(h_fig_main.axes_Q, 'Эксп','СЭ',1);
set(h, 'Box', 'off')

%set(h_fig_main.axes_ADC, 'XTick', []);
%set(h_fig_main.axes_ADC, 'YTick', []);
%set(h_fig_main.axes_ADC, 'XLim', [0 Tc/102]);
ress = 1;

end

