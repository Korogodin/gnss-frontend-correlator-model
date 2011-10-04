function create_y(h_fig_main)
%CREATE_Y ADC input signal imitation (front-end output signal)

globals;
set_CalcStatus(h_fig_main, 'Идёт расчет процессов во фронтенде');

siggg = signal_onoff*MCode_real_sig.*S; % Clear IF signal
y_YP4 = siggg + noise_onoff*Noise + Jam*jammer_onoff; % IF signal with noise and jammer garmonic signal

if YP4_BAND == 2 % 6 MHz bandwidth
    y_YP4 = filter(filter_6MHz, y_YP4);
elseif YP4_BAND == 3 % 1 MHz bandwidth
    y_YP4 = filter(filter_1MHz, y_YP4);
end
plot_YP4(h_fig_main);


if AD_MODE == 1
    y = y_YP4;
elseif AD_MODE == 2
    y = 2*((y_YP4 > 0) - 0.5);
end
plot_ADC(h_fig_main); 

set_CalcStatus(h_fig_main, 'Процессы во фронтенде успешно смоделированы');
DoIt(h_fig_main);

end
